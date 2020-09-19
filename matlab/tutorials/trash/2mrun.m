res=[];ctr=1;
for a=1.0:0.01:2
n=1000;
mat = [[0:(n-1)]'*a,zeros(n,2)];
write_lmpdatafile_m(mat,a);
system(['lmp_daily -var lc ',num2str(a),' < test.lammps']);
temp=read_file2mat(100,100,'log.lammps');
res = [res;[a temp(2)]];
ctr = ctr+1;
end

plot(res(:,1),res(:,2))
ylim([-2,8])
xlim([0.8,2])