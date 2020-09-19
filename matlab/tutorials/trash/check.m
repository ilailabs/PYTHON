GetDumpData;
for i=1:nf
    Mat=D(:,:,i);
    x_data=Mat(:,1).*4;
    x2_pos(i)=x_data(2);
end
x=1:nf;
y=x2_pos-1;
plot(x,y,'-o')
ylim([-1 1])
myfit
