% file: demo_checkerboard.m
% author: Marc HEsse
% date: 19 Dec. 2014
function []=demo_checkerboard()
clc, close all
set_demo_defaults
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
param.Nx = 10 ;
param.BC = 'DD';
% param.BC = 'ND';

plot_std_fd = 0;
plot_system = 1;

%% Solutions
[xa,ha,qa,Qa] = AnalyticSolution(param);

[xFD,hFD,qFD,QFD] = FiniteDifferenceSolution(param,ha);

if plot_system
[x,h,q,Q] = FD_collocated(param,ha);
end

figure
plot(xa,ha(xa)), hold on
xlabel('$r$','interpreter','latex'), ylabel('$h$','interpreter','latex')

if plot_system && ~plot_std_fd
    plot(x,h)
    legend('Analytic','FD: 1st-order system')
end
if plot_std_fd && ~plot_system
    plot(xFD,hFD)
    legend('Analytic','FD: 2nd-order eqn.')
end
if plot_std_fd && plot_system
    plot(xFD,hFD,x,h)
    legend('Analytic','FD: 2nd-order eqn.','FD: 1st-order system')
end
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

%% Finite difference solution if collocated grid
function [x,h,q,Q] = FD_collocated(param,ha)
rw = param.rw; 
r0 = param.r0;
h0 = param.h0;
Qw = param.Qw;
H = param.H;
K = param.K;
Nx = param.Nx;
%BC = param.BC;
%Aw = param.Aw;

x = linspace(rw,r0,Nx)'; dx = x(2)-x(1);
e = ones(Nx,1);
D = full(spdiags([-e e]/2/dx,[-1 1],Nx,Nx));
D(1,1) = -1/dx; D(1,2) = 1/dx;
D(Nx,Nx-1) = -1/dx; D(Nx,Nx) = 1/dx;
% D(1,N) = -1/2; D(N,1) = 1/2;
% D = D/dx;

r = spdiags(x,0,Nx,Nx);
L = -D*r*D;

B = zeros(2,Nx); B(1,1) = 1; B(2,Nx) = 1;
I = eye(Nx); N = I(:,2:Nx-1);
g = [ha(rw); ha(r0)];

odd = [1:2:Nx]'; even = [2:2:Nx]';
P = I([odd;even],:);

subplot 121
spy(L)
title 'Standard ordering'
subplot 122
spy(P*L*P')
title 'Even-odd ordering'


h = solve_lbvp(L,0,B,g,N);
q = -D*h;
Q = x.*q;

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

