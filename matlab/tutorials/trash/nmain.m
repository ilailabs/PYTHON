n=10;
ctr=1;
for a=3.5:0.01:12.0
% a=4.05;
m=26.98;

a0_A=a;a0_B=1.0*a;
mA=m;mB=1.0*m;
nB=n;nA=n;

spacing=1.00*a;
lj2Datafile([nA, nB],[a0_A, a0_B]  , spacing     ,[mA, mB])

cmd = 'lmp_daily -in nve.lammps';
system(cmd)
temp=read_file2mat(139,139,'log.lammps');
pe=temp(2);pe_pa=pe/n;
E(ctr)=pe_pa;p(ctr)=a;ctr=ctr+1;
end

plot(p,E,'.');grid on;
