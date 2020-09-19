syms r rr

e=3.3;
s=2.83;
E(r) = 4*e*((s/r)^12-(s/r)^6);

rdata = 2:0.001:9.0;
Edata = double(E(rdata));
plot(rdata, Edata)
xlim([0, 9]);
ylim([-3.5 2]);
hold on;
grid on;

ind_min = find(Edata == min(Edata));
r0 = rdata(ind_min);
plot(r0,Edata(ind_min),'*');

%harmonic region%

%r0 from the func %from the exp r0=3.165
del_r0 = 0.01;

rdata_harm = (r0-del_r0):0.001:(r0+del_r0);
Edata_harm = double(E(rdata_harm));
%plot(rdata_harm, Edata_harm);
del_Edata_harm = range(Edata_harm);

%What should be my optimal amp del_r0
% ctr = 1;
% for A=0.01:0.001:1.0
%     rdata_harm1 = (r0-A):0.001:(r0+A);
%     Edata_harm1 = double(E(rdata_harm1));
%     list_del_Edata(ctr) = range(Edata_harm1);ctr = ctr +1;
% end

%%by definition
kdef = 36*e/((2^(2/3))*(s^2));
k=23.48;
r0h=r0;
Eharm(rr) = 0.5*kdef*(rr - r0h)^2 + (-e);
rrdata_harm = rdata;
Eharmdata = double(vpa(Eharm(rrdata_harm)));
plot(rrdata_harm, Eharmdata);

xx = 3.14:0.001:3.21;
ylj = double(vpa(E(xx)));
yhm = double(vpa(Eharm(xx)));

% e1
% e2