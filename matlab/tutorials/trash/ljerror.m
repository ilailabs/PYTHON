syms r

e=3.3;
s=2.83;
r0 = 2^(1/6)*s;
k=(36*e)/((2^(2/3))*(s^2));
E_lj(r) = 4*e*((s/r)^12-(s/r)^6);
E_hm(r) = 0.5*k*(r-r0)^2-e;
dr_l = 1.474e-6;
dr_r = 0.478;
del_r=1e-3;

rdata = (r0-dr_l):del_r:(r0+dr_r);
Elj = double(E_lj(rdata));
Ehm = double(E_hm(rdata));
plot(rdata, Elj)
% xlim([0, 9]);
% ylim([-3.5 2]);
hold on;
grid on;
plot(rdata, Ehm)

plot(r0,E_lj(r0),'*');


% plot(rdata, Elj-Ehm)


