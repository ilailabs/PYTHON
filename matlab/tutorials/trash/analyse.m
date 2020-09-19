% i=1
lno=100;
while(i<=301)
filename=['min',num2str(i),'.lmp_log.txt'];
temp=read_file2mat(lno,lno,filename);
ke(i)=temp(3); i=i+1;
end