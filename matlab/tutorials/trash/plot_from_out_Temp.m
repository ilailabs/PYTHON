B=read_file2mat(1,1118,'temp.txt');
lz=B(:,2);
v_T = B(:,4);

c = mean(v_T)*1.1600e+04;
TT = v_T*1.1600e+04;
plot(lz,TT);
