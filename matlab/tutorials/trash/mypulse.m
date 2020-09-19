fname = 'disp1900.csv';
B=readCsv(fname);
lx=B(:,1);
disp=B(:,2);
amp=range(disp)/2;

t=1:length(lx);
f=0.16;
y=amp*sind(2*pi*f*t);

plot(t,y);
hold on;

% plot(t,disp);