function dbox(p1,p8)
%p1=[0 0 0];p8=[3,3,3];
xlabel('1 0 0');ylabel('0 1 0');zlabel('0 0 1');
%drawing base plane:
xb=[p1(1),p8(1),p8(1),p1(1),p1(1)];yb=[p1(2),p1(2),p8(2),p8(2),p1(2)];zb=[p1(3),p1(3),p1(3),p1(3),p1(3)];
line(xb,yb,zb,'LineWidth',2)
%drawing top plane:
line(xb,yb,zb+p8(3),'LineWidth',2)
%drawing right side plane only 2 lines and left side 2 lines:
x1=[p1(1),p1(1)];
y1=[p1(2),p1(2)];
z1=[p1(3),p8(3)];
line(x1,y1,z1,'LineWidth',2)
line(x1+p8(1),y1,z1,'LineWidth',2)
line(x1+p8(1),y1+p8(2),z1,'LineWidth',2)
x2=[p1(1),p1(1)];
y2=[p8(2),p8(2)];
z2=[p1(3),p8(3)];
line(x2,y2,z2,'LineWidth',2)