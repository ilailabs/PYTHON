Natoms = 280;
% a=1.0;
K = 17.82;
m=26.98;

% factor_Kmetal2
%eV/A^2 to N/m
% meff=1.96e-25;% from fitting;%grams/mol to kg/atom
% meff=1.6603e-26;% from theory
meff=m*(10e-3/6.023e23)*6;
keff=K*16.0218*1;

del_i=(pi/a)/Natoms;
kvec = (-pi/a):del_i:(pi/a);
kind=kvec/(2*pi/a);

syms k
% A0=2*sqrt(keff/meff);
A0=25.39;
omega(k)=A0*abs(sin(0.5*k*a));

%conv rad/s to rad/ps
% w = 1e-12*double(omega(kvec));
w = double(omega(kvec));

plot(kind, w, '-');hold on;
plot(k1,w1,'.');

