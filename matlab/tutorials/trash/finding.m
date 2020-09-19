function finding(p1,p2,e,s)
%e = 12.9; s = 3.2;
syms a b r
E(a,b, r) = 4*e*((s/r)^a-(s/r)^b);

%equ1 = E(a,b,mat(22,1) == mat(22,2));
%equ2 = E(a,b,mat(14,1) == mat(14,2));
load('al_matlab.mat')
plot(mat(:,1),mat(:,2));hold on;
plot(mat(:,1),zeros(63,1));
plot(4.1*ones(63,1),mat(:,2));
ylim([-20,120]);
xlim([2,8]);

rv=[3.0:0.01:4.5];
plot(rv,E(p1,p2,rv))

