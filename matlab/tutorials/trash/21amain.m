ljDatafile(16,1.0)
% harmonic1d(16,1.0,1,[0.015 1]);
system('lmp_daily -in thermal.lammps')
system('./phana phonon.bin.2000000 < in.disp')
pplot('mypdisp.txt');
