%Vel dist for plane; for 3d harmonic wavepacket;

load mat;
wavePlane = mat;
[nr, nc] = size(wavePlane);
time = [1:100];

sDev = 15; mean = time(round(length(time)/2)); A=1;
V = A*gaussmf(time,[sDev mean]);

%plot(time,V,'-o');hold on;

xind = 1;
step = length(time)/nc;skip =1;
for i=0:round(nc/2)
    X(xind) = V(skip);
    ntime(xind) = time(skip);
    xind = xind+1;skip=skip+step;
end
plot(ntime,X,'*');

WCenIndex = [round(nr/2), round(nc/2)];
MVel(nr,nc)=0;

inc=1;
rHi=0.5;rLo=0;

for hh=0:length(X)-1

for i=1:nr
    for j=1:nc
        ic = i-WCenIndex(1); jc =j-WCenIndex(2);
        r = (ic*ic + jc*jc)^0.5;
        if((rLo==0) && (r<rHi))
            MVel(i,j)=X(end-hh);
        elseif((rLo<r) && (r<rHi))           
            MVel(i,j)=X(end-hh);
        end
    end
end
rLo=rHi;rHi=rHi+inc;
end

cc = 1;
for i=1:nr
    for j=1:nc
   vel(cc,:)=[mat(i,j), MVel(i,j), 0, 0];
   cc = cc+1;
    end
end

%clearvars -except wavePlane MVel vel