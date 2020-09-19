Natoms = 2000;
a=1.0;
K = 0.2713;
m=1.0;

del_i=(pi/a)/Natoms;
kvec = (-pi/a):del_i:(pi/a);
kind=kvec/(2*pi/a);

syms k
omega(k)=2*sqrt(K/m)*abs(sin(0.5*k*a));

w = double(omega(kvec));
plot(kind, omega(kvec), '-');

