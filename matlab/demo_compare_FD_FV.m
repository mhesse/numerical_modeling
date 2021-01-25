% Demo_compare_FD_FV.m
% author: Marc Hesse
% date: 18 Dec 2014

function []=demo_compare_FD_FV()
set_demo_defaults

clc, close all
%% Physical paramters
param.rw = .1; 
param.r0 = 100;
param.h0 = 1;
param.Qw = 1;
param.H = 1;
param.K = 1;
param.Aw = 2*pi*param.rw*param.H;
rlim = [param.rw,param.r0];

%% Numerical paramters
param.Nx = 5;
% param.BC = 'DD';
% param.BC = 'DD2';
param.BC = 'ND';

[xa,ha,qa,Qa] = AnalyticSolution(param);
[xFD,hFD,qFD,QFD] = FiniteDifferenceSolution(param,ha);
[xc,xf,hFV,qFV,QFV] = FiniteVolumeSolution(param,ha);

%% Plot results

scrsz = get(groot,'ScreenSize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)/2])
subplot 131
 h = plot(xa,ha(xa),'-',xFD,hFD,'--',xc,hFV,'--'); hold on
c = get(h,'Color');
plot(rlim,ha(rlim),'o','markerfacecolor','w','markeredgecolor',c{1})
pbaspect([1 .8 1])
xlabel 'r', ylabel 'h'
legend('Analytic','FD','FV')

subplot 132
plot(xa,qa(xa),'-',xFD,qFD,'--',xf,qFV,'--'), hold on
plot(rlim,qa(rlim),'o','markerfacecolor','w','markeredgecolor',c{1})
pbaspect([1 .8 1])
xlabel 'r', ylabel 'q'
subplot 133
plot(xa,Qa(xa),'-',xFD,QFD,'--',xf,QFV,'--'), hold on
plot(rlim,Qa(rlim),'o','markerfacecolor','w','markeredgecolor',c{1})
pbaspect([1 .8 1])
xlabel 'r', ylabel 'Q'

end

%% Analytical solution
function [xa,ha,qa,Qa] = AnalyticSolution(param)
rw = param.rw; 
r0 = param.r0;
h0 = param.h0;
Qw = param.Qw;
H = param.H;
K = param.K;

% Analytic solution
xa = linspace(rw,r0,1e3);
ha = @(r) h0 - Qw/2/pi/H/K * log(r/r0);
qa = @(r) Qw/2/pi/H./r;
Qa = @(r) Qw+0*r;
end

%% Finite difference solution
function [xFD,hFD,qFD,QFD] = FiniteDifferenceSolution(param,ha)
rw = param.rw; 
r0 = param.r0;
h0 = param.h0;
Qw = param.Qw;
H = param.H;
K = param.K;
Nx = param.Nx;
BC = param.BC;
Aw = param.Aw;

x = linspace(rw,r0,Nx)'; dx = x(2)-x(1);
e = ones(Nx,1);
D = spdiags([-e e]/2/dx,[-1 1],Nx,Nx); 
D(1,1) = -3/2/dx; D(1,2) = 4/2/dx; D(1,3) = -1/2/dx; 
D(Nx,Nx) = 3/2/dx; D(Nx,Nx-1) = -4/2/dx; D(Nx,Nx-2) = 1/2/dx; 

D2 = spdiags([e -2*e e]/dx^2,[-1 0 1],Nx,Nx); 
R = spdiags(x,0,Nx,Nx); I = speye(Nx,Nx);
L = -K*(R*D2+D); fs = zeros(Nx,1); 

if strcmp(BC,'ND')
    L(1,:) = D(1,:); fs(1) = -Qw/Aw/K;
    B = I(Nx,:); N = I; N(:,Nx) = [];
    g = ha(r0);
elseif strcmp(BC,'DD') || strcmp(BC,'DD2')
    B = I([1;Nx],:); N = I; N(:,[1;Nx]) = [];
    g = [ha(rw);ha(r0)];
end

hFD = solve_lbvp(L,fs,B,g,N);
qFD = -K*D*hFD;
QFD = 2*pi*H*x.*qFD;
xFD = x;
end

%% Finite volume solution
function [xc,xf,hFV,qFV,QFV] = FiniteVolumeSolution(param,ha)
rw = param.rw; 
r0 = param.r0;
h0 = param.h0;
Qw = param.Qw;
H = param.H;
K = param.K;
Nx = param.Nx;
BC = param.BC;
Aw = param.Aw;

Grid.xmin = rw; Grid.xmax = r0; Grid.Nx = Nx; Grid.geom = 'cylindrical_r';
Grid = build_grid(Grid);

[D,G,I] = build_ops(Grid);
L = -D*K*G; fs = zeros(Grid.Nx,1); fn = fs;

if strcmp(BC,'ND')
    %B = I(Grid.Nx,:); N = I; N(:,Nx) = [];
    Param.g = ha(r0-Grid.dx/2);
    fn(1) = Qw/Grid.V(1);
    Param.dof_dir = [Grid.dof_xmax];
    Param.dof_f_dir = [Grid.dof_f_xmax];
    Param.dof_neu = [Grid.dof_xmin;]; 
    Param.dof_f_neu = [Grid.dof_f_xmin];
    Param.qb = Qw/Grid.A(1);
    [B,N,fn] = build_bnd(Param,Grid,I);
    fn(1) = Qw/Grid.V(1);
elseif strcmp(BC,'DD')
%     B = I([1;Nx],:); N = I; N(:,[1;Nx]) = [];
    Param.g = [ha(rw);ha(r0)];
    Param.dof_dir = [Grid.dof_xmin;Grid.dof_xmax];
    Param.dof_f_dir = [Grid.dof_f_xmin;Grid.dof_f_xmax];
    Param.dof_neu = []; Param.dof_f_neu = [];
    [B,N,fn] = build_bnd_class(Param,Grid);
elseif strcmp(BC,'DD2')
    B = I([1;Nx],:);  N = I; N(:,[1;Nx]) = [];
    Param.g = [ha(rw+Grid.dx/2);ha(r0-Grid.dx/2)];
end

hFV = solve_lbvp(L,fs+fn,B,Param.g,N);
%qFV = comp_flux(D,K,G,hFV,fs,Grid);
qFV = comp_flux(D,K,G,hFV,fs,Grid,Param);
QFV = 2*pi*Grid.xf*H.*qFV;
xc = Grid.xc;
xf = Grid.xf;
end