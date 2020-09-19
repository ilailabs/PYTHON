the = 15;
L=20;
A=crystal2d(1.25*L);
B=crystal2d(1.25*L);
rb = rotz(-the/2);ra = rotz(the/2);
B_r=B*rb;
A_r=A*ra;
box_a=[0,0;L,L];box_b=[L,0;2*L,L];
B_rt = B_r+[L*0.75, 0, 0];
An=trimLattice(A_r,box_a);
Bn=trimLattice(B_rt,box_b);
C=[An;Bn];
splot(C)