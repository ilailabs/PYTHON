% F=dQ/dt;
% F=0.9091;
F=1.0;
dt=0.55e-3;
dQ=F*dt;

Lx=21.72;Ly=29.241;
Lz=1564.13;
% gradT=12.4/400;
% slope=(y(2)-y(1))/(x(2)-x(1));
% slope=0.4084;
% gradT=-slope/10;
% syms fac
fac=997.74902900891008071354819721199;
A=Lx*Ly;
J=F/(2*A);

% fac=1.8141e+08;
% kappa=J/gradT*fac

J/delta_temp*(1.60217e3)
% *0.6227