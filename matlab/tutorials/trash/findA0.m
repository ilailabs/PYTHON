
ctr=1;

for i=1:10
A=10^-i;
a=Elj(r0-A);
b=Ehm(r0-A);

a=vpa(a);b=vpa(b);
A_lj_hm(ctr,:)=[A, a, b];ctr=ctr+1;
end

M=A_lj_hm;
del_r=M(end:-1:1,1);
err=abs(M(end:-1:1,2)-M(end:-1:1,3));