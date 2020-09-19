% F = 5.0;
% dt = 0.55e-3;
% J = F*dt;
% 
% Lx = 21.72e-1; Ly = 29.241e-1;
% A = Lx*Ly; % "nm^2"

% ======================================= %

gradT = 0.000; % "K/A"
F = 2.0455;

lmp_dt = 0.55e-3; % "ps"
grad_T = gradT*1; % "K/nm" #CHECK
del_epi = F*lmp_dt; % "eV"
Lx = 32.586e-1; Ly = Lx;
A = Lx*Ly; % "nm^2"
dt = 0.55e-15; % "s"

fac_eV_2_J= 1.60218e-19;

J = del_epi /(2*A); % "eV/nm^2"
J = J/dt; % "eV/(nm^2 * s)"
J = J*fac_eV_2_J; % "W/nm^2"

kappa = J / grad_T; % "W/(nm*K)"
kappa = kappa *1e9; % "W/mK"
kappa;

% ============================================ slope you should expect %

%const1 = 1.2712e+03;
%F = 5.0;
% gradT_recc = kappa / (const1*F)
