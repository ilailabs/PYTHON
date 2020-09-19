i=0;
a=5+i*21;
b=24+i*21;
M=read_file2mat(a,b,'profile.heat');
plot(M(:,2),M(:,4));
