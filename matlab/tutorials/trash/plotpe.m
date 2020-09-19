k=3.0;
r0=1.0;

% A=0.1;
% % rv=(r0-A):A/10:(r0+A);
% pe=double(Ehm(rv));
% plot(rv, pe);hold on;
% grid on;
% % ylim([-1.5 1.5])

rv=0.8:0.01:2.5;

s=r0/(2^(1/6));
c=36/((2^(2/3)));
e=s^2*k/c;

syms r
Ehm(r)=0.5*k*(r-r0)^2 -e;
Elj(r)=4*e*((s/r)^12-(s/r)^6);
 plot(rv, Ehm(rv));hold on;grid on;
 plot(rv, Elj(rv));