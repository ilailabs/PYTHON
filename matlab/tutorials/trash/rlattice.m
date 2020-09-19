xn=10;
yn=10;

cord=[];
for i=0:xn
    for j=0:yn
       temp=uc+[lx*i, ly*j];
       cord=[cord;temp];
    end
end
hold on;
splot(cord)