function k1 = main(f)
syms k
C=6.0;
M=1;
a=1;

w(k) = sqrt(4*C/M)*abs(sin(0.5*k*a));
kk=[-pi/a:2*pi/2/1000:pi/a];
ww = double(w(kk));
plot(kk,ww)

% f = 0.4989;
w1 = f*2*pi;
k1=double(vpa(solve(w(k)==w1,k)));

hold on;
plot(k1(1),w1,'*');