Natoms = 16;
a=1.0;
K = 3.0;
m=1.0;

del_i=(pi/a)/Natoms;
kvec = 0:del_i:(pi/a);

syms k
omega(k)=2*sqrt(K/m)*abs(sin(0.5*k*a));

w = double(omega(kvec));
plot(kvec, omega(kvec), 'o');

