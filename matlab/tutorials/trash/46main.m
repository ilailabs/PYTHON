clear all;
n=718;
D=zeros(n,1);
ctr = 0;
for f=114:-1:50
     [tt,lz] = tempAllData(f);
    size(tt)
     D=D+tt;
     ctr = ctr + 1
end
Av=D/ctr;
plot(lz,Av)

%--- find the slope and plot --- %
K = find(lz>460 & lz<1140);
X = lz(K);
Y = Av(K);
p = polyfit(X,Y,1);
YY = p(1)*X +p(2);
% plot(X, YY);
hold on;
plot(lz, Av);
% slope = range(YY)/range(X)

%--- sub functions ---%
function [tem,lz] = tempAllData(f)
n=718;
a = 2+f*(n+1);
b = a-2+(n+1);
C = read_file2mat(a,b,'Tempcgunk.txt');
lz = C(:,2);
tem = C(:,4);
end