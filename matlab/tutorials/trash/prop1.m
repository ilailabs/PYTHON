function prop1(h)
x_a = [0:h:5];
y_a = abs(sqrt(-x_a.*x_a+25));

%plot(x_a, y_a);

% prop1
% hold on;
[X_e, Y_e]=euler1(h);err_h = abs(Y_e-y_a)./y_a;
% h=0.5/2;[X_e, Y_e]=euler1(h);plot(X_e,Y_e);
% h=0.5/4;[X_e, Y_e]=euler1(h);plot(X_e,Y_e);
% h=0.5/8;[X_e, Y_e]=euler1(h);plot(X_e,Y_e);
%savefig...
plot(log(X_e),log(err_h));
% end

