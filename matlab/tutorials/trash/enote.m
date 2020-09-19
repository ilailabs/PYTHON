% syms f
f = 6.56; % eV/ps
dt = 0.55e-3; % ps
del_epi = 3.0*dt; %eV;
A = 58.5e-10 * 58.5e-10; % m^2;

eV2J = 1.60218e-19;
F = f*eV2J; % J/ps
F = F*1e12; % W
J = F/(2*A) % W/m^2
