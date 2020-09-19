function [b]= getbasis_0()
% Given Fd-3m
% Positions for 8a. Last number is used to identify the atom type
A=[0 0 0 1];
%Positions for 8b. Last number is used to identify atom type
B=[0.5 0.5 0.5 2];
a=basis_symm8a(A);%<Get all the basis for this position
c=basis_symm8b(B);%< Get all the basis for this postion
b=[a;c];
end

function [basisa]=basis_symm8a(X)
x=X(1);
y=X(2);
z=X(3);

basisa(1,1:3)=[0 0 0];
basisa(2,1:3)=[3/4 1/4 3/4];
basisa(3,1:3)=basisa(1,1:3)+[ 0 0.5 0.5];
basisa(4,1:3)=basisa(1,1:3)+[ 0.5 0 0.5];
basisa(5,1:3)=basisa(1,1:3)+[ 0.5 0.5 0];
basisa(6,1:3)=basisa(2,1:3)+[ 0 0.5 0.5];
basisa(7,1:3)=basisa(2,1:3)+[ 0.5 0 0.5];
basisa(8,1:3)=basisa(2,1:3)+[ 0.5 0.5 0];


basisa(1,4)=X(4);
basisa(2,4)=X(4);
basisa(3,4)=X(4);
basisa(4,4)=X(4);
basisa(5,4)=X(4);
basisa(6,4)=X(4);
basisa(7,4)=X(4);
basisa(8,4)=X(4);
%Need to bring everything into the box. 
for j = 1:8
    for k=1:3
 if(basisa(j,k) < 0)
     basisa(j,k)=1-abs(basisa(j,k));
 end
     if(basisa(j,k) > 1)
    basisa(j,k)=abs(basisa(j,k))-1;
end        
end
    end
end


function [basisa]=basis_symm8b(X)
x=X(1);
y=X(2);
z=X(3);

basisa(1,1:3)=[0.5 0.5 0.5];
basisa(2,1:3)=[1/4 3/4 1/4];
basisa(3,1:3)=basisa(1,1:3)+[ 0 0.5 0.5];
basisa(4,1:3)=basisa(1,1:3)+[ 0.5 0 0.5];
basisa(5,1:3)=basisa(1,1:3)+[ 0.5 0.5 0];
basisa(6,1:3)=basisa(2,1:3)+[ 0 0.5 0.5];
basisa(7,1:3)=basisa(2,1:3)+[ 0.5 0 0.5];
basisa(8,1:3)=basisa(2,1:3)+[ 0.5 0.5 0];


basisa(1,4)=X(4);
basisa(2,4)=X(4);
basisa(3,4)=X(4);
basisa(4,4)=X(4);
basisa(5,4)=X(4);
basisa(6,4)=X(4);
basisa(7,4)=X(4);
basisa(8,4)=X(4);

for j = 1:8
    for k=1:3
 if(basisa(j,k) < 0)
     basisa(j,k)=1-abs(basisa(j,k));
 end
     if(basisa(j,k) > 1)
    basisa(j,k)=abs(basisa(j,k))-1;
end        
end
    end
end


