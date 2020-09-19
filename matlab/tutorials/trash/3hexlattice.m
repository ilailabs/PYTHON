function A=hexlattice(xn,yn)
% xn=10;yn=10;
a=4;
a=sqrt(2)*a/2;
av=[2*a*cosd(30), 0];
bv=[a*cosd(30), a*sind(30)];

lx=2*a*cosd(30);
ly=2*a*sind(30);

% ctr=1;
% for i=0:5
%     for j=0:5
%     R=i*av+j*bv;
%     pos(ctr,:)=R;ctr=ctr+1;
%     end
% end
uc=[ 0,0 ...
    ;bv]; 

% xn=10;
% yn=10;

cord=[];
for i=0:xn
    for j=0:yn
       temp=uc+[lx*i, ly*j];
       cord=[cord;temp];
    end
end
A=cord;
cord=[cord, zeros(length(cord),1)];
write_lmpdatafile_m(0,cord,lx,ly)
end

%---------sub-function---------%

