syms r rr

rvar = 3.1755:0.0001:3.1775;

e=3.3;
s=2.83;
kdef = 36*e/((2^(2/3))*(s^2));
Elj(r) = 4*e*((s/r)^12-(s/r)^6);




elj = double(vpa(Elj(rvar)));
ind_min = find(elj == min(elj));r0 = rvar(ind_min);

Ehm(rr) = 0.5*kdef*(rr - r0)^2 + (-e);

%plot lj
% plot(rvar, Elj(rvar));hold on;
% plot(rvar, Ehm(rvar))

plot(rvar, Elj(rvar)-Ehm(rvar));

