function plotLattice(H)
plot3(H(:,1),H(:,2),H(:,3),'o','MarkerFaceColor','r','MarkerSize',5);
view(0,90);
daspect([1 1 1]);
end
