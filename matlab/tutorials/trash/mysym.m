n=length(A);
count=0;
for i=1:n
    for j=1:n
        if(A(i,j)==A(j,i))
        count=count+1;
        end
    end
end
if(count==n*n)
    fprintf('Yes\n')
else
    fprintf('no\n')
end