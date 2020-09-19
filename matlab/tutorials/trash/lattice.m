% function lattice(n)
n=500;
% for J=4:2:28
a=4;
a=sqrt(2)*a/2;
av=[2*a*cosd(30), 0];
bv=[a*cosd(30), a*sind(30)];

ctr=1;
for i=0:n
    for j=0:n
    R=i*av+j*bv;
    pos(ctr,:)=R;ctr=ctr+1;
    end
end

the=34;
R=[cosd(the), -sind(the); sind(the), cosd(the)];

pos=pos*R
splot(pos)
findl
% upda
% end