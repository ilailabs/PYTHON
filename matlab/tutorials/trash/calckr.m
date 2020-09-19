J = 15.36; % GW/m^2;
% dT = 19.4; % K;

J_J = J*1e9;
eV_J = 1.60218e-19;
J_eV = J_J / eV_J
lx = 54.57;
ly = 54.57;
A = lx*ly*(1e-10)^2;
F= J_eV*2*A; %(eV/s)
F_i = F*1e-12
