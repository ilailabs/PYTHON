
INPUT="phonon.lammps"

/Apps/OPENMPI/openmpi-4.0.1/bin/mpirun -np 18 /Apps/LAMMPS/lammps-12Dec18/src/lmp_g++_openmpi -in $INPUT
