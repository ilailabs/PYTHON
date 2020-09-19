function l=findLattice(M)
M=M(:,2);
A=unique(sortrows(M));
l=A(2)-A(1);
end
