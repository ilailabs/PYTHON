A=read_file2mat(116,20116,'logfile.txt');
st=A(:,1);
te=A(:,2);
plot(st,te);hold on;
plot(st(5000:end),te(5000:end));
tm=mean(te(5000:end))