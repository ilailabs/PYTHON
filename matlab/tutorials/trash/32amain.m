% natoms=10;
% % mass1=12.0107;
% mass1=50.0;
% bond1coeff=[0.15, 1];
% 
ctr=1;
for a=4.0:0.01:10.0
% % i=1;
% a=i;
% harmonic1d(natoms,a,mass1,bond1coeff);
% a=5.431;
system(['atomsk --create diamond ',num2str(a),' Si lmp']);
system('lmp_daily -in min.lammps');
system('rm Si.lmp')
temp=read_file2mat(77,77,'log.lammps');
pe=temp(2);ke=temp(3);
E(ctr)=pe+0;lp(ctr)=a;
ctr=ctr+1;
end
plot(lp,E/8,'.');