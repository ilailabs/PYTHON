function B=trimLattice(ALattice,boxDim)
V = ALattice;box2 = boxDim;
l=V(:,1)<box2(1,1);
V=V(~l,:);
%splot(V);
l=V(:,1)>box2(2,1);
V=V(~l,:);
%splot(V);
l=V(:,2)<box2(1,2);%left
V=V(~l,:);
l=V(:,2)>box2(2,2);
B=V(~l,:);
end