n=5;
a0=4.04;
p1 = [0 0 0];
p4 = [n n*sind(60) 0];

% na = 10;
% nb = 10;

%%crystal A
draw2dBox(p1,p8);
hold on;

tol = 0;
n1 = [p1(1)-tol:p4(1)+tol];
n2 = [p1(2)-tol:p4(2)+tol];
ALatt = lattice2d(n1,n2);
plotLattice(ALatt);
% 
% ALatt_t = trimLattice(ALatt, [p1; p8]);
% plotLattice(ALatt_t);
