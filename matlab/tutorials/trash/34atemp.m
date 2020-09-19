syms r e s
% f(r)=(8.91)*r^2 +(-72.17)*r +(132.7);
k=1.0*17.82;
r0=4.05;
ehm=13.44;%from eam potential
Ehm(r)=0.5*k*(r-r0)^2-ehm;
Elj(r,e,s) = 4*e*((s/r)^12 - (s/r)^6);

s=r0/(2^(1/6));
% elj=s^2*k/(36/((2^(2/3))));%from lj potential

% A=0.1;
% x=r0-A:A/100:r0+A;

% y=double(f(x));
rv=3.5:0.01:10;
rv2=3.5:0.01:4.5;

plot(rv,Elj(rv,ehm,s),'.');
hold on; grid on;
plot(rv2,Ehm(rv2))