natoms = 20000;
a=4.05;
mass1=26.982;
k=17.82;
bond1coeff=[k/2, a];

harmonic1d(natoms,a,mass1,bond1coeff);

cmd = 'lmp_daily -in pulse.lammps';


system(cmd)

k/mass1
