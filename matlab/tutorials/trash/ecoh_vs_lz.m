GetDumpData;
per=10; %slab of 10 percent of sim cell size;

%grouping of atom based on; lz
fn=2;
A=D(:,:,fn);
sel=A(:,5);
lz=max(sel);
nslabs=100/per;
n1=0;
prange=[];
srange=[];
for i=1:nslabs
    n0=n1;
    n1=n1+per;
    lz0=n0*lz*0.01;lz1=n1*lz*0.01;
    prange=[prange; n0,n1];
    srange=[srange; lz0,lz1];
    %getting data into matrix
    lo=sel>srange(i,1) & sel<=srange(i,2);
    H(:,:,i)=A(lo,:);
end

%plot your req data here;
for i=1:nslabs
    data=H(:,:,i);
    x_ecoh(i)=mean(data(:,7));
    y_lz(i)=mean(srange(i,:));
end

plot(x_ecoh,y_lz,'*')  
 