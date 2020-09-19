function [M]=replicate(A0,lp,rep)
%lp=[a,b,c]; are lattice parameter
%rep=[xtimes,ytimes,ztimes]; replicate in dir correspondingly
%  Translation of the cell in x direction
M=A0;
s=size(A0);
for i=1:rep(1)-1
    C1=lp(1)*ones(s(1),1);
    C0=zeros(s(1),1);
           temp=A0+[C1*i, C0, C0, C0];
        M=[M;temp];
end

A0=M;
s=size(A0);
for i=1:rep(2)-1
    C1=lp(1)*ones(s(1),1);
    C0=zeros(s(1),1);
        temp=A0+[C0, C1*i, C0, C0];
        M=[M;temp];
end
A0=M;
s=size(A0);
for i=1:rep(3)-1
    C1=lp(1)*ones(s(1),1);
    C0=zeros(s(1),1);
        temp=A0+[C0,C0, C1*i,C0];
        M=[M;temp];
end
