for i in $(ls *.lmp)
do
#lmp_daily -var ipfile $i -in ../batchMin.lammps
/Apps/openmpi/bin/mpirun -np 16 /Apps/lammps/src/lmp_mpi -var ipfile $i -in batchMin.lammps
done
