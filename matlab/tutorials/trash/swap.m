function [a1, a2, ns]=swap(x,y)
if y<x
    a1=y;a2=x;
else
    a1=x;a2=y;
end
end