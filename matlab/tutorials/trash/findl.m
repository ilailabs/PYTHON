%find Y rep distance
ym=max(pos(:,2));
xdata=pos(pos(:,2)==ym);
yxm=min(xdata);

logic_x=pos(:,1)<=yxm*1.001 & pos(:,1)>=yxm*0.999;
x_pts=pos(logic_x,:);
x_pts=sortrows(x_pts,2);
ly=x_pts(2,2)-x_pts(1,2);

%find X rep distance
xm = min(pos(:,1));
ydata = pos(pos(:,1)==xm);
xym=min(ydata);
logic_y=pos(:,2)>=0.001 & pos(:,2)<=0.999;
y_pts=pos(logic_y,:);
y_pts=sortrows(y_pts,1);
lx=y_pts(2,1)-y_pts(1,1);