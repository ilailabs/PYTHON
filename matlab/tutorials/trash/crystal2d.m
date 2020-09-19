function A=crystal2d(k)
s = [k, k];
ctr=1;
for i=1:s(1)
    for j=1:s(2)
    A(ctr,:)=[i-1 j-1 0];
    ctr = ctr+1;
    end
end