x1=[a(3), a(4)];
y1=[b(3), b(4)];
p=450;
yp=interp1(x1,y1,[p],'linear','extrap');

ys=400:500;
xs=x(500)*ones(length(ys),1);
plot(xs, ys);