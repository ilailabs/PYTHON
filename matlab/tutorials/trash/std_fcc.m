function [M]=std_fcc(m,p)
%to generate cornor atom positions
count=1;
for a=0:m
    for b=0:m
        for c=0:m
            R(count,:)=[1 0 0].*a+[0 1 0].*b+[0 0 1].*c;
            count=count+1;
        end 
    end
end
%to generate face atoms postion
cnt=1;
for a=0:m-1
    for b=0:m-1
        for c=0:m-1
            R0(cnt,:)=[1 0 0].*a+[0 1 0].*b+[0 0 1].*c;
            cnt=cnt+1;
        end 
    end
end
% in x direction
R1(:,1)=R0(:,1)+0.5;
R1(:,2)=R0(:,2)+0.5;
R1(:,3)=R0(:,3);

% in y direction
R2(:,1)=R0(:,1)+0.5;
R2(:,2)=R0(:,2);
R2(:,3)=R0(:,3)+0.5;

% in z direction
R3(:,1)=R0(:,1);
R3(:,2)=R0(:,2)+0.5;
R3(:,3)=R0(:,3)+0.5;

l1=R1==0;
f1=R1+l1.*m;
f1=f1(l1(:,3),:);

l2=R2==0;
f2=R2+l2.*m;
f2=f2(l2(:,2),:);

l3=R3==0;
f3=R3+l3.*m;
f3=f3(l3(:,1),:);

cor=R;
fce=[R1;f1;R2;f2;R3;f3];
fcc=[cor;fce];


M=(fcc).*p;

