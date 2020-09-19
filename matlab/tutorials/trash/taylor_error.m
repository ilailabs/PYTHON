syms x
f(x) = exp(x);

xvar = 0.00:0.01:5.0;
plot(xvar, f(xvar)); hold on;

T1(x) = taylor(f(x), x, 'Order', 10);

plot(xvar, T1(xvar))