ctr=1;
for i=1:3663
fname=['disp',num2str(i),'.csv'];
[pos, dis]=readcsv(fname);
ind=find(dis==max(dis));
A(ctr)=dis(ind(1));P(ctr)=pos(ind(1));T(ctr)=i;
ctr=ctr+1;
end
save('Alldisp.mat')