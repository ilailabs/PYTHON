##create Unit cell

for mAng in 16 24 32 34 40 48 56
do
mkdir $mAng
cd $mAng

##anhealing in lammps
#lmp_daily -in ../quench.lammps
/Apps/openmpi/bin/mpirun -np 16 /Apps/lammps/src/lmp_mpi -in ../quench.lammps
cd ..
done


