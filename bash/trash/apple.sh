cd exp1
export OMP_NUM_THREADS=4
mpirun -np 4 lmp_daily -in in.input.lmp

cd exp2
export OMP_NUM_THREADS=4
mpirun -np 4 lmp_daily -in in.input.lmp
cd ..

cd exp3
mv log.lammps exp3_log.lammps
mv dump.output exp3_dump.output
export OMP_NUM_THREADS=4
mpirun -np 4 lmp_daily -in in.input.lmp
cd ..

