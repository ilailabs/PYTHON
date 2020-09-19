% syms i
A=0.0001;

d_rr=A/100;
rr=(r0-A):d_rr:(r0+A);
ylj=(Elj(rr));
yhm=(Ehm(rr));
% plot(rr,ylj);
hold on;grid on;
plot(rr,yhm);

ehm=0.5*3.0*(rr-1).^2-e;

