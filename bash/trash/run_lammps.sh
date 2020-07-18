#Jumps to folder runs lammps one by one... saves time
cd exp2
atomsk s11_113.cfg datafile.lmp
export OMP_NUM_THREADS=4
mpirun -np 4 lmp_daily -in in.input.lmp
cd ..

cd exp3
atomsk s11_332.cfg datafile.lmp
export OMP_NUM_THREADS=4
mpirun -np 4 lmp_daily -in in.input.lmp
cd ..

