l=length(A);
 a=1;
 b=100;
 ctr = 1;
for i=1:100:l
    a=i;
    b=a+99;
    m=mean(A(a:b,2));
    ind(ctr)=i;
    mm(ctr)=m;
    ctr = ctr + 1;
end