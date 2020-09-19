syms r


e=5.241;
s=3.144;
E(r) = 4*e*((s/r)^8-(s/r)^2.8)

rr=3:0.5:6.5;
plot(rr,E(rr))