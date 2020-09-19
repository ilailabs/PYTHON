grad_T = 0.315; % "K/nm"
del_epi = 5e-4; % "eV"

% kappa = 47.9; % "W/mK"
% fac = kappa / grad_T
% fac = 152.0635;
% kappa_c = grad_T * fac

Lx = 21.72e-1; Ly = 29.241e-1;
A = Lx*Ly; % "nm^2"
% A = 4.73;
dt = 0.55e-15; % "s"
 
fac_eV_2_J= 1.60218e-19;
% fac_eV_2_J= 1.6e-19;


J = del_epi /(2*A); % "eV/nm^2"
J = J/dt; % "eV/(nm^2 * s)"
J = J*fac_eV_2_J; % "W/nm^2"

kappa = J / grad_T; % "W/(nm*K)"
kappa = kappa *1e9; % "W/mK"
kappa;

