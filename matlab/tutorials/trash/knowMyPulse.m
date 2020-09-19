% dt = 0.01;
% nCycles = 100;
% T = 1.7446;
% A =0.0001;
% 
% ome = 2*pi/ T;
% tt = T*nCycles;
% nSteps = tt/dt;
% 
% c=tt/2;
% width=100;
% 
% syms t
% u(t)=1*exp((-(t-c)^2)/2*width^2)
% *sin(ome*t);
% 
% tvar=0:tt;
% plot(tvar,u(tvar))
tt=140;A=1e-4;
x = 0:0.1:tt;
y = A*gaussmf(x,[20, tt/2]);
plot(x,y)
xlabel('gaussmf, P=[2 5]')