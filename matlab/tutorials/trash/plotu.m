syms x y
u(x,y)=x^3 + 5*y^2 -10*y^3 + y^4;
[X, Y]=meshgrid(0:0.1:1, 0:0.1:1);
surf(X, Y)