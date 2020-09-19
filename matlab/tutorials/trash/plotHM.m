syms r
r0=1;
k=3;
Ehm(r)=0.5*k*(r-r0)^2;

rv=0.5:0.01:1.5;
plot(rv,Ehm(rv));