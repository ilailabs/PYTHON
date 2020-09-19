function [M]=fcc(m,p)
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
            R1(cnt,:)=[1 0 0].*a+[0 1 0].*b+[0 0 1].*c;
            cnt=cnt+1;
        end 
    end
end
% in x direction
R1c(:,1)=R1(:,1)+0.5;
R1c(:,2)=R1(:,2)+0.5;
R1c(:,3)=R1(:,3);

% in y direction
R2c(:,1)=R1(:,1)+0.5;
R2c(:,2)=R1(:,2);
R2c(:,3)=R1(:,3)+0.5;

% in z direction
R3c(:,1)=R1(:,1);
R3c(:,2)=R1(:,2)+0.5;
R3c(:,3)=R1(:,3)+0.5;





 M=[R;R1c;R2c;R3c];
 M=(M).*p;
 scatter3(M(:,1),M(:,2),M(:,3));
