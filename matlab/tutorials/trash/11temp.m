A=read_file2mat(116,3753,'logfile.txt');
figure(5);
step=A(:,1);
tem=A(:,2);
plot(step,tem);
Tm=mean(tem(end-500:end));