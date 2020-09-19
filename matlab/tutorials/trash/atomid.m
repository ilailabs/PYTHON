function [a,b,ite]=atomid(l)
%this function gives you the atom id's of center plane;
ite=l*l*2;
a=l*l*2*l-ite+1;
b=l*l*2*l;