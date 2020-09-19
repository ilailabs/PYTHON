% prop1: euler method%
function [X, Y]=euler1(h)
% h=0.5;
x=0;y=5;

len_x=5/h +1;
for i=1:len_x
X(i)=x;
Y(i)=y;
f=-x/y;

y=y+h*f;
x=x+0.5;
end

