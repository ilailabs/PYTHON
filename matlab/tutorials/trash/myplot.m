function myplot(A)
[~,n1]=size(A);
for i=2:n1
    figure
    plot(A(:,1),A(:,i))
    savefig(['col 1 vs col',num2str(i)])
end
    