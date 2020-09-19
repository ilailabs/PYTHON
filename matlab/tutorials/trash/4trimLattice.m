function B=trimLattice(ALattice,boxDim)
V = ALattice;
l=V(:,1)<=boxDim(1,1);
V=V(~l,:);
    %splot(V);
l=V(:,1)>boxDim(2,1);
V=V(~l,:);
    %splot(V);
l=V(:,2)<=boxDim(1,2);
V=V(~l,:);
l=V(:,2)>boxDim(2,2);

B=V(~l,:);
end