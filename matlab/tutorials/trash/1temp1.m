nr=10;nc=10;nLayer=5;

ctr=1;
I=[];
for i=1:nr
    for j=1:nc
        I(ctr,:)=[i j];
        ind(i,j)=ctr;
        ctr = ctr+1;
    end
end
plot(I(:,1),I(:,2),'*');

WCen=[round(nr/2), round(nc/2)];

inc=1;
rHi=0.5;rLo=0;
grp={};cctr=1;
grpTemp=[];ccc=1;

hold on;
for hh=1:nLayer
for i=1:nr
    for j=1:nc
        ic = i-WCen(1); jc =j-WCen(2);
        r = (ic*ic + jc*jc)^0.5;
        if((rLo==0) && (r<rHi))
                grpTemp(ccc)=ind(i,j) ;ccc=ccc+1;
        elseif((rLo<r) && (r<rHi))           
                grpTemp(ccc)=ind(i,j) ;ccc=ccc+1;
        end
    end
end
rLo=rHi;rHi=rHi+inc;
grp{cctr}=grpTemp;cctr=cctr+1;grpTemp=[];ccc=1;
end