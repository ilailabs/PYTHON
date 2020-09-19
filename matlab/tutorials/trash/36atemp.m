A=read_file2mat(121,1030,'logfile.txt');
step=A(:,1);T=A(:,2);
ke=A(:,4);
figure(2);
plot(step,T/7.7364e+03);
ylim([0, 0.1])

sT=sortrows(T);
nT=sT(300:600);
Tm=mean(nT);
