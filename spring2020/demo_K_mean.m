function []=demo_K_mean(Kexp)
% author: Marc Hesse
% date: 8 Oct 2014
clc, close all
clear Grid Param
set_demo_defaults
%% Paramters
K = [5e-3 5e-5 5e-3 ];
l = [20 20 60];

hL = 120;
hR = 100;

Nx = [1 2 3 4 5 6]*5;
%% Analytic solution
denom = K(1)*K(2)*l(3) + K(1)*l(2)*K(3) + l(1)*K(2)*K(3);
h1 = (K(1)*(K(2)*l(3)+l(2)*K(3))*hL+l(1)*K(2)*K(3)*hR)/denom;
h2 = (K(3)*(K(1)*l(2)+l(1)*K(2))*hR+l(3)*K(1)*K(2)*hL)/denom;
ha = [hL h1 h2 hR];
qa = - K(1)*(h1-hL)/l(1);
xa = [0 cumsum(l)];

scrsz = get(groot,'ScreenSize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
subplot 121
semilogy([0 Nx(end)],qa*[1 1],'k-','linewidth',2), hold on
xlim([0 Nx(end)]), ylim([1e-5 1e-3])
xlabel 'Nx', ylabel 'q [m^3/(m^2 s)]'
pbaspect([1 .8 1])

subplot 122
patch([20 40 40 20],[100 100 120 120],.9*[1 1 1],'edgecolor','none'), hold on
plot(xa,ha,'k-','linewidth',2)
xlabel 'x [m]', ylabel 'h [m]'
pbaspect([1 .8 1])
pause
%% Numerical solution - harmonic average
Grid.xmin = 0; Grid.xmax = xa(end);
Kvec = K;
map = colormap(jet(length(Nx)));

i=1;
for n = Nx
    Grid.Nx = n;
    Grid = build_grid(Grid);
    [D,G,I] = build_ops(Grid);
    
    % Hydraulic conductivity
    K = ones(Grid.Nx,1);
    K(Grid.xc<xa(4)) = Kvec(3);
    K(Grid.xc<xa(3)) = Kvec(2);
    K(Grid.xc<xa(2)) = Kvec(1);
    K = K';
    
    % Dirichlet BC's
    Param.dof_dir = [Grid.dof_xmin;Grid.dof_xmax];
    Param.dof_f_dir = [Grid.dof_f_xmin;Grid.dof_f_xmax];
    Param.dof_neu = [];
    Param.dof_f_neu = [];
    
    Param.g = interp1(xa,ha,Grid.xc(Param.dof_dir));
    
    %% Discrete differential operators
    [D,G,I] = build_ops(Grid);
    Kd = comp_mean(K,Kexp,1,Grid);
    L = -D*Kd*G; fs = spalloc(Grid.N,1,0);
    
    %% Build boundary operators
    [B,N,fn] = build_bnd(Param,Grid,I);
    
    %% Solve system
    h = solve_lbvp(L,fs+fn,B,Param.g,N);
    
    %% Compute fluxes
    q = comp_flux(D,Kd,G,h,fs,Grid,Param);
    
    subplot 121
    semilogy(n,q(1),'o','markeredgecolor',map(i,:),'markerfacecolor','w')
    xlim([0 Nx(end)]), ylim([1e-5 1e-3])
    subplot 122
    plot(Grid.xc,h,'-','color',map(i,:)), i=i+1;
    xlim([0,xa(end)])
    drawnow
end
