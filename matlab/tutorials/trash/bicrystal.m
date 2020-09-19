function C = bicrystal(L,the)
% L = 40;
% the = 0;
A=crystal2d(L);
B=crystal2d(1.25*L);
r = rotz(the);
B_r=B*r;
B_rt = B_r+[L*0.75, 0, 0];
box2=[L,0;2*L,L*0.9999];
Bn=trimLattice(B_rt,box2);
C=[A;Bn];
% C=C(:,1:2)
end

%---crystal2d()---%
function A=crystal2d(k)
s = [k, k];
ctr=1;
for i=1:s(1)
    for j=1:s(2)
    A(ctr,:)=[i-1 j-1 0];
    ctr = ctr+1;
    end
end
end

%---trimLattice()---%
function B=trimLattice(ALattice,boxDim)
V = ALattice;box2 = boxDim;
l=V(:,1)<box2(1,1);
V=V(~l,:);
    %splot(V);
l=V(:,1)>box2(2,1);
V=V(~l,:);
    %splot(V);
l=V(:,2)<box2(1,2);
V=V(~l,:);
l=V(:,2)>box2(2,2);
B=V(~l,:);
end