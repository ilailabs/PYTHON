gradT =0.1944; % "K/A"
F = 0.9091;


lmp_dt = 0.55e-3; % "ps"
grad_T = gradT*10; % "K/nm"
% grad_T = 0.315;
del_epi = F*lmp_dt; % "eV"
Lx = 21.724e-1; Ly = 21.7241e-1;
A = Lx*Ly; % "nm^2"
% A = 4.73;
dt = 0.55e-15; % "s"

fac_eV_2_J= 1.60218e-19;

J = del_epi /(2*A); % "eV/nm^2"
J = J/dt; % "eV/(nm^2 * s)"
J = J*fac_eV_2_J; % "W/nm^2"

kappa = J / grad_T; % "W/(nm*K)"
kappa = kappa *1e9; % "W/mK"
kappa

% ============================================ %

% const1 = 1.2712e+03;
% F = 5.0;
% gradT_recc = kappa / (const1*F)
