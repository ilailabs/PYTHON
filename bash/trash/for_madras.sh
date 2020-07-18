#!/bin/bash

#PBS -l nodes=1:ppn=1	
#####=========WALL-TIME========================
#PBS -l walltime=240:00:00
#####=========GIVE THE NAME OF THE JOB==============
#PBS -N IMPRINT_PROJECT
#####==============================
#PBS -mea
#####==========GIVE YOUR EMAIL ADDRESS HERE================
#PBS -M me16d404@smail.iitm.ac.in
#####===================================
MPIPATH="/App/openmpi/bin/mpirun"
LAMMPS_PATH="/Apps/lammps/src/lmp_mpi"
#####=========GIVE THE NAME OF THE INPUT FILE==============
INPUT="in.lammps"
cd $PBS_O_WORKDIR

for i in {1..1}
do
#mpiexec.hydra -np 64 /sware/lammps/lammps-30Sep16/src/lmp_mpi -var Ai $i -in onedimal.lammps
/Apps/OPENMPI/openmpi-4.0.1/bin/mpirun -np 1 /Apps/LAMMPS/lammps-12Dec18/src/lmp_g++_openmpi -var Ai $i -in onedimal.lammps
done

#####==============================
