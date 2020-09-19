Natoms=100;
a=1.0;
K = 3.0e-2*1;
m=1.0;

%HARMONIC POTENTIAL...
harmonic1d(Natoms,a,m,[K/2, a]);
% ljDatafile(Natoms,a)
system('lmp_daily -in thermal_hm.lammps')
system('./phana phonon.bin.2000000 < in.disp')
phana=pplot('mypdisp.txt');
% fTheory


%%LJ POTENTIAL
% epi=0.105;
% sig=0.8909;
% k_lj=(36*epi)/(2^(2/3)*sig^2);
% r0=2^(1/6)*sig;
% ljDatafile(Natoms,a,m)
% % system('lmp_daily -in thermal_lj.lammps')
% system('./phana phonon.bin.2000000 < in.disp')
% phana=pplot('mypdisp.txt');
% % fTheory