n=4000;
m=26.98;
a=4.04;

for i=1:10
A=0.001*i;
e=13.44*0.01;
s=a/(2^(1/6));
lj1Datafile(n,a,m)
cmd=['lmp_daily -var e ',num2str(e),' -var A ',num2str(A),' -var s ',num2str(s),' -in phonon.lammps'];
system(cmd)
end