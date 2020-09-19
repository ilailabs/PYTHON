function draw2dBox(p1,p8)
% xlabel('1 0 0');ylabel('0 1 0');zlabel('0 0 1');

%%drawing base plane:
xb=[p1(1),p8(1),p8(1),p1(1),p1(1)];
yb=[p1(2),p1(2),p8(2),p8(2),p1(2)];
zb=[p1(3),p1(3),p1(3),p1(3),p1(3)];
line(xb,yb,zb,'LineWidth',1)
daspect([1 1 1]);
