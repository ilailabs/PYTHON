load('WavePlane.mat');
[nr, nc]=size(indMat);
nLayer=5;

WCen=[round(nr/2), round(nc/2)];

inc=1;
rHi=0.5;rLo=0;
grp={};cctr=1;
grpTemp=[];ccc=1;

for hh=1:nLayer
for i=1:nr
    for j=1:nc
        ic = i-WCen(1); jc =j-WCen(2);
        r = (ic*ic + jc*jc)^0.5;
        if((rLo==0) && (r<rHi))
                grpTemp(ccc)=indMat(i,j) ;ccc=ccc+1;
        elseif((rLo<r) && (r<rHi))           
                grpTemp(ccc)=indMat(i,j) ;ccc=ccc+1;
        end
    end
end
rLo=rHi;rHi=rHi+inc;
grp{cctr}=grpTemp;cctr=cctr+1;grpTemp=[];ccc=1;
end

fileId = fopen('GroupAtoms.txt','w');
for i=1:length(grp)
fprintf(fileId,'%s\n',num2str(grp{i}));
end
fclose(fileId);