syms r
e=0.3720*13.44;
s=3.6081;
ene(r)=4*e*((s/r)^12 - (s/r)^6);
plot(p,ene(p))