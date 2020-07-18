#!/bin/bash

#PBS -l nodes=2:ppn=16
#####=========WALL-TIME========================
#PBS -l walltime=240:00:00
#####=========GIVE THE NAME OF THE JOB==============
#PBS -N IMPRINT_PROJECT
#####==============================
#PBS -mea
#####==========GIVE YOUR EMAIL ADDRESS HERE================
#PBS -M elankovanmg@gmail.com
#####===================================
Jobid=`echo $PBS_JOBID`
tmpdir=$HOME/scratch/job$Jobid
mkdir -p $tmpdir; cd $tmpdir
cp -R $PBS_O_WORKDIR/* $tmpdir

MPIRUN="/App/openmpi/bin/mpirun"
LAMMPS_PATH="/users/rakesh/lammps-16Mar18/src/lmp_mpi"
#####=========GIVE THE NAME OF THE INPUT FILE==============
INPUT="qthrice.lammps"
date > starttime
$MPIRUN -np 32 $LAMMPS_PATH -in $INPUT > out.interface
date > endtime
mv ../job$Jobid $PBS_O_WORKDIR
#####======================END========
