A=[2 1 3];
B=A;
while(min(A)==B(1) & max(A)==B(end))
for i=1:length(A)
    if B(i+1)<B(i)
    a1=B(i+1);a2=B(i);
    B(i)=a1;B(i+1)=a2;
    else
    a1=B(i);a2=B(i+1);
    end
end
a=a+1;
end