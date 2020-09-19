% Natoms = 100;
% a=1.0;
% K = 3.0;
% m=1.0;

% factor_Kmetal2
%eV/A^2 to N/m
% meff=1.96e-25;% from fitting;%grams/mol to kg/atom
% meff=1.6603e-26;% from theory
meff=m*(10e-3/6.023e23)*1;
keff=K*16.0218*1;

del_i=(pi/a)/Natoms;
kvec = (-pi/a):del_i:(pi/a);
kind=kvec/(2*pi/a);

syms k
omega(k)=2*sqrt(keff/meff)*abs(sin(0.5*k*a));

%conv rad/s to rad/ps
w = 1e-12*double(omega(kvec));
% plot(kind, w, '-');

keff/meff

