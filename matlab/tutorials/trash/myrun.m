L=20;
the=10;
A=crystal2d(L);

B=crystal2d(1.25*L);
r = rotz(the);
B_r=B*r;
B_rt = B_r+[L*0.75, 0, 0];
%splot(B_rt)
box2=[L,0;2*L,L];
Bn=trimLattice(B_rt,box2);
splot(Bn)
