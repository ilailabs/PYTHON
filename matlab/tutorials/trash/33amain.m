natoms=10;
% mass1=12.0107;
mass1=50.0;
bond1coeff=[0.15, 1];

ctr=1;
for i=0.5:0.01:1.5
% i=1;
a=i;
harmonic1d(natoms,a,mass1,bond1coeff);
system('lmp_daily -in simpleNve.lammps');
temp=read_file2mat(77,77,'log.lammps');
pe=temp(2);ke=temp(3);
E(ctr)=pe+0;lp(ctr)=i;
ctr=ctr+1;
end
plot(lp,E,'.');