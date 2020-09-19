function [M]=bcc(m,p)
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
%to generate center atoms postion
cnt=1;
for a=0:m-1
    for b=0:m-1
        for c=0:m-1
            R0(cnt,:)=[1 0 0].*a+[0 1 0].*b+[0 0 1].*c;
            cnt=cnt+1;
        end 
    end
end

Rc=R0+0.5;
%end of center atom positions
 M=[R;Rc];
 M=(M).*p;
 scatter3(M(:,1),M(:,2),M(:,3));

