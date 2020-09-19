function splot(A)
scatter3(A(:,1),A(:,2),A(:,3),'filled');
daspect([1 1 1]);
view(0,90)
hold on;
end