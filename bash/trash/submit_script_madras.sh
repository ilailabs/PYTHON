#!/bin/bash
#####PBS -l nodes=1:ppn=16	
#PBS -l nodes=node2:ppn=16	
#####=========WALL-TIME========================
#PBS -l walltime=240:00:00
#####=========GIVE THE NAME OF THE JOB==============
#PBS -N silicon_sw
#####==============================
#PBS -mea
#####==========GIVE YOUR EMAIL ADDRESS HERE================
#PBS -M me16d044@smail.iitm.ac.in
#####===================================
MPIPATH="/App/openmpi/bin/mpirun"
LAMMPS_PATH="/Apps/lammps/src/lmp_mpi"
#####=========GIVE THE NAME OF THE INPUT FILE==============
INPUT="silicon_sw.in"
cd $PBS_O_WORKDIR
/Apps/OPENMPI/openmpi-4.0.1/bin/mpirun -np 16 /USERS/edwin/DSAHOO/lammps-11Aug17/src/lmp_mpi -in $INPUT > silicon_sw.out
#####==============================

