function [a,b,ite]=atomidp(A,l)
%this function gives you the atom id's of center plane;

l=25;
s=size(A);
ite=s(1)/(l*2);

a=ite*l-ite+1;
b=ite*l;