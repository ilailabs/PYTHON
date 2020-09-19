function M=sfcc(a,r) 
A0= [    0         0         0;
    0.5000    0.5000         0;
         0    0.5000    0.5000;
    0.5000         0    0.5000];

%  Translation of the cell in x direction
M=A0;
s=size(A0);
for i=1:r(1)-1
    C1=ones(s(1),1);
    C0=zeros(s(1),1);
           temp=A0+[C1*i, C0, C0];
        M=[M;temp];
end

A0=M;
s=size(A0);
for i=1:r(2)-1
    C1=ones(s(1),1);
    C0=zeros(s(1),1);
        temp=A0+[C0, C1*i, C0];
        M=[M;temp];
end
A0=M;
s=size(A0);
for i=1:r(3)-1
    C1=ones(s(1),1);
    C0=zeros(s(1),1);
        temp=A0+[C0,C0, C1*i];
        M=[M;temp];
end
%splot(M);
M=M.*a;