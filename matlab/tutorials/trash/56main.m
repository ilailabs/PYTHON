G=[509];
i=[4];
for j=1:1
fname=['Tempcgunk',num2str(i(j)),'.txt'];
n=G((j));
D=zeros(n,1);
ctr = 0;
for f=398:-1:98
     [tt,lz] = tempAllData(f,n,fname);
    size(tt)
     D=D+tt;
     ctr = ctr + 1;
end
Av=D/ctr;
plot(lz,Av);
xlim([0,lz(end)]);
savefig([num2str(i(j)),'A','.fig'])
saveas(gcf,[num2str(i(j)),'A','.pdf'])
save([num2str(i(j)),'A','.mat'])
% clear all
end

%--- sub functions ---%
function [tem,lz] = tempAllData(f,n,fname)
a = 2+f*(n+1);
b = a-2+(n+1);
C = read_file2mat(a,b,fname);
lz = C(:,2);
tem = C(:,4);
end
