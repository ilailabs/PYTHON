#!/bin/bash

# MPIPATH="/App/openmpi/bin/mpirun"
# LAMMPS_PATH="/Apps/lammps/src/lmp_mpi"
#
# Ovitopath="/ovito-2.9.0-x86_64/bin/ovitos"
# for i in {1..1}
# do
# mkdir $i"_amp"
# cd $i"_amp"
# #lmp_daily -var Ai $i -in ../onedimal.lammps
# #/Apps/OPENMPI/openmpi-4.0.1/bin/mpirun -np 1 /Apps/LAMMPS/lammps-12Dec18/src/lmp_g++_openmpi
# $MPIPATH -np 2 $LAMMPS_PATH -var Ai $i -in onedimal.lammps
# #$Ovitopath --nthreads 4 $Pyfile $i"_file.dump"
# cd ..
# done

/Apps/LAMMPS/lammps-12Dec18/src/lmp_g++_openmpi -var Ai 1 onedimal.lammps
