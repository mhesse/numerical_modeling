function [] = DiscreteConservation(Qa,Ql,Nx,Ny)
% DiscreteConservation.m
% author: Marc Hesse
% date: 25 Aug 2016
% Notes: Is based on Leak_flow.m

close all, clc         % clean's up Matlab

%% Define problem
[Grid,Param,KD,Xc,Yc] = setup_parameters(Qa,Ql,Nx,Ny);

%% Numerical solution of flow problem
% Build discrete operators and rhs vectors
[D,G,I] = build_ops(Grid);
L = -D*(KD/Param.mu)*G; fs = spalloc(Grid.N,1,Param.Nleak); 
fs(Param.dof_leak) = Param.fs_leak;

% Build discrete boundary operators and rhs vectors
[B,N,fn] = build_bnd(Param,Grid,I);

% Solve linear system
p = solve_lbvp(L,fs+fn,B,Param.g,N);

% Compute fluxes
q = comp_flux(D,KD/Param.mu,G,p,fs,Grid,Param);

% Compute steamfuntion
[PSI, psi_min, psi_max] = comp_streamfun(q,Grid);
[Xf,Yf] = meshgrid(Grid.xf,Grid.yf);
[x0,psi_div,h] = comp_stagnation_point(Xf,Yf,PSI,q(1:Grid.Nfx),Grid);

%% Plot flow net
cont_p = linspace(min(p),max(p),Param.Nc);
cont_psi = linspace(min(psi_min),max(psi_max),Param.Nstr);

figure('name','Leak_flow: Flownet')
%subplot 211
contour(Xc,Yc,reshape(p,Grid.Ny,Grid.Nx),cont_p,'b-'),  hold on
contour(Xf,Yf,PSI,cont_psi,'r-')
contour(Xf,Yf,PSI,psi_div*[1 1],'g','linewidth',2)
plot(x0,0,'go','markerfacecolor','w')
title 'Whole aquifer', xlabel 'x', ylabel 'y'
axis equal, axis([Grid.xmin Grid.xmax Grid.ymin Grid.ymax])

%% Check discrete mass conservation
dy2s = 60^2*24;
Qa_num   = sum(full(q(Grid.dof_f_xmin).*Grid.A(Grid.dof_f_xmin)))*dy2s;  % Flow rate into the aquifer from the left [m^3/dy]
Ql_num   = sum(full(fs(Param.dof_leak).*Grid.V(Param.dof_leak)))  *dy2s; % Flow rate of leak
Qout_num = sum(full(q(Grid.dof_f_xmax).*Grid.A(Grid.dof_f_xmax)))*dy2s;  % Flow out of domain on right
fprintf('\nTotal mass balance across the domain:\n')
fprintf('Flow in on left:    %3.5f [m^3/dy]\n',Qa_num)
fprintf('Flow from leak:     %3.5f [m^3/dy]\n',Ql_num)
fprintf('Flow out on right:  %3.5f [m^3/dy]\n',Qout_num)
fprintf('Mass balance error: %3.5e [m^3/dy]\n\n',Qout_num-(Ql_num+Qa_num))

fprintf('Dividing streamline: h/H = %3.5f, Ql/(Ql+Qa) = %3.5f\n',h/Grid.Ly,Ql/(Ql+Qa))
pause()
%% Check a flux on a subdomain
x_poly = [.1 .2 .2 .1]*Grid.Lx + Grid.xmin;
y_poly = [.1 .1 .5 .5]*Grid.Ly + Grid.ymin;

% x_poly = [.5 .6 .6 .5]*Grid.Lx + Grid.xmin;
% y_poly = [.1 .1 .5 .5]*Grid.Ly + Grid.ymin;

[dof_in,dof_out] = find_poly_cells(x_poly,y_poly,Grid);
dof_faces = find_bounding_faces(dof_in,D,Grid);
[X_faces,Y_faces] = comp_face_coords(dof_faces,Grid);
plot(X_faces,Y_faces,'k-','linewidth',2)



%% Find fluxes across boundaries

[qbnd,x,y] =  comp_discrete_bnd_fluxes(q,dof_faces,Grid);
Ql = sum(qbnd.l);
Qr = sum(qbnd.r);
Qb = sum(qbnd.b);
Qt = sum(qbnd.t);
fprintf('\nMass balance across the small domain:\n')
fprintf('Flow in  on left:    %3.5f [m^3/dy]\n',Ql)
fprintf('Flow out on right:   %3.5f [m^3/dy]\n',Qr)
fprintf('Flow in on bottom:   %3.5f [m^3/dy]\n',Qb)
fprintf('Flow out on top:     %3.5f [m^3/dy]\n',Qt)
fprintf('Mass balance error: %3.5e  [m^3/dy]\n\n',(Ql+Qb)-(Qr+Qt))

end

function [Grid,Param,KD,Xc,Yc] = setup_parameters(Qa,Ql,Nx,Ny)
% author: Marc Hesse
% date: 10 June 2015
% Description: This script set up the paramters, grid and BC's for
% leakage form a fracture into an aquifer.

dy2s = 60^2*24; s2dy = 1/dy2s;    % conversion between seconds and days
D2sqm = 1e-12; sqm2D = 1/D2sqm;   % conversion between Darcy and square meters  
Param.dy2s = dy2s;

%% Physical parameters
Param.Length = 170;                           % aquifer length in [m]
Param.Height = 30;                           % aquifer thickness in [m]
Param.xleak = 20;                            % distance of leaking fault from left boundary [m]
Param.Qleak = Ql/dy2s;                       % Flow rate of the leak [m^3/s]
Param.Qaq   = Qa/dy2s;                        % Flow rate of aquifer  [m^3/s]

Param.mu = 1e-3;                             % dynamic viscosity of water [Pa s];
Param.Disp = 1e-6;                           % dispersion coefficient [m^2/s]
Param.phi = .2;                              % porosity [1]
Param.k  = 36*D2sqm;                         % absolute permeability of the rock [1 Darcy = 1e-12 m2]
Param.p0 = 0;                                % outflow pressure

%% Domain & Grid set-up
Grid.xmin = -Param.xleak;
Grid.xmax = Param.Length-Param.xleak;              
Grid.ymin = 0;
Grid.ymax = Param.Height;                     

Grid.Nx = Nx;                      % number of horizontal gridblocks in x-dir
Grid.Ny = Ny;                       % number of horizontal gridblocks in y-dir
Grid.Nz = 1;                          % number of horizontal gridblocks in z-dir
Grid = build_grid(Grid);

%% Source term for the leak
% Locate cell for leak
[Xc,Yc] = meshgrid(Grid.xc,Grid.yc);
[leak,dof_leak] = min(abs(Xc(:)-0)+abs(Yc(:)-0));
Param.dof_leak = dof_leak; Param.Nleak = length(dof_leak);

% Compute source term
Param.fs_leak = Param.Qleak./Grid.V(Param.dof_leak); % Leak flux:    q= Q/A

% Plotting
Param.Nc = 15;   % Number of pressure contours
Param.Nstr = 15; % Number of streamlines

KD = Param.k*speye(Grid.Nf);

%% Boundary conditions
% Dirichlet at out-flow
Param.dof_dir = Grid.dof_xmax;
Param.dof_f_dir = Grid.dof_f_xmax;
Param.g = zeros(Grid.Ny,1);

% Neumann at inflow
Param.dof_neu = Grid.dof_xmin;
Param.dof_f_neu = Grid.dof_f_xmin;
qaq = Param.Qaq/(Grid.Ly*Grid.Lz);                 % Aquifer flux: q= Q/A
Param.qb = [qaq*ones(Grid.Ny,1)];

%% Streamfunction plotting
Grid.psi_x0 = ['xmin_ymax'];  % start at bottom left corner
Grid.psi_dir = ['xy'];        % integrated x-dir first

% Grid.psi_x0 = ['xmin_ymin'];  % start at bottom left corner
% Grid.psi_dir = ['yx'];        % integrated x-dir first


end

function [x0,psi_div,h] = comp_stagnation_point(Xf,Yf,PSI,qx,Grid)
% author: Marc Hesse
% date: 12 June 2015
% Description: This function finds the stationary/stagnation point, x0, 
% ahead of the leak and computes the streamline emanating from x0 that 
% divides the fluid emanating from the leak and the original fluid in the 
% aquifer.

% Input:
% Xf, Yf = Nf bu Nf matrices of the locations of the streamfunction
% PSI = Nf by Nf matrix of steamfunction
% qx = Nfx by 1 vector of fluxes in x-dir
% Grid = structure with grid information

% Output:
% x0 = location of stationary point
% psi_div = value of the streamfunction at x0

%% Detect stagnation point x0, where qx = qy = 0
QX = reshape(qx,Grid.Ny,Grid.Nx+1);
[qxmin,imin] = min(QX(1,:));        % min is the large negative velocity just ahead of the leak!
qx_int = @(xint) abs(interp1(Grid.xf(1:imin),QX(1,1:imin),xint));
x0 = fminbnd(qx_int,Grid.xmin,Grid.xf(imin)); % search for x0 ahead of leak

%% Evaluate streamfunction at stangnation point
psi_div = PSI(1,1);

%% Height of dividing streamline at xmax
obj_psi_end = @(h) abs(interp1(Grid.yf,PSI(:,Grid.Nx+1),h)-psi_div);
h = fminbnd(obj_psi_end,Grid.ymin,Grid.ymax);


end

function [q_bnd,x_bnd,y_bnd] = comp_discrete_bnd_fluxes(q,dof_faces,Grid)
dy2s = 60^2*24;

%% Compute fluxes across x-faces
[Xx,Yx] = meshgrid(Grid.xf,Grid.yc);
dof_x_faces = dof_faces(dof_faces<=Grid.Nfx);
x_bnd_min = min(Xx(dof_x_faces));
x_bnd_max = max(Xx(dof_x_faces));
dof_xmin_faces = dof_x_faces(abs(Xx(dof_x_faces)-x_bnd_min)<eps);
dof_xmax_faces = dof_x_faces(abs(Xx(dof_x_faces)-x_bnd_max)<eps);

q_bnd.l = q(dof_xmin_faces).*Grid.A(dof_xmin_faces)*dy2s;
q_bnd.r = q(dof_xmax_faces).*Grid.A(dof_xmax_faces)*dy2s;
x_bnd.l = Xx(dof_xmin_faces); y_bnd.l = Yx(dof_xmin_faces);
x_bnd.r = Xx(dof_xmax_faces); y_bnd.r = Yx(dof_xmax_faces);

%% Compute fluxes about y-faces
[Xy,Yy] = meshgrid(Grid.xc,Grid.yf);
dof_y_faces = dof_faces(dof_faces>Grid.Nfx)-Grid.Nfx;
y_bnd_min = min(Yy(dof_y_faces));
y_bnd_max = max(Yy(dof_y_faces));

dof_ymin_faces = dof_y_faces(abs(Yy(dof_y_faces)-y_bnd_min)<eps);
dof_ymax_faces = dof_y_faces(abs(Yy(dof_y_faces)-y_bnd_max)<eps);

q_bnd.b = q(dof_ymin_faces+Grid.Nfx).*Grid.A(dof_ymin_faces+Grid.Nfx)*dy2s;
q_bnd.t = q(dof_ymax_faces+Grid.Nfx).*Grid.A(dof_ymax_faces+Grid.Nfx)*dy2s;
x_bnd.b = Xy(dof_ymin_faces); y_bnd.b = Yy(dof_ymin_faces);
x_bnd.t = Xy(dof_ymax_faces); y_bnd.t = Yy(dof_ymax_faces);
end