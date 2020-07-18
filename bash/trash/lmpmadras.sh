#!/bin/bash

#PBS -l nodes=2:ppn=16
#####=========WALL-TIME========================
#PBS -l walltime=240:00:00
#####=========GIVE THE NAME OF THE JOB==============
#PBS -N IMPRINT_PROJECT
#####==============================
#PBS -mea
#####==========GIVE YOUR EMAIL ADDRESS HERE================
#PBS -M rkgiri4292@gmail.com
#####===================================
Jobid=`echo $PBS_JOBID`
tmpdir=$HOME/scratch/job$Jobid
mkdir -p $tmpdir; cd $tmpdir
cp -R $PBS_O_WORKDIR/* $tmpdir

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64
GMX="/usr/bin/gmx_d"
MPIRUN="/App/openmpi/bin/mpirun"
LAMMPS_PATH="/users/rakesh/lammps-16Mar18/src/lmp_mpi"
#####=========GIVE THE NAME OF THE INPUT FILE==============
#INPUT="united_atom_40_24.in"
date > starttime
#gmx grompp -v > grompp.txt
#gmx mdrun -v -tableb table_d0.xvg table_d1.xvg > mdrun.txt
#/usr/bin/csg_dump -v --cg mappingcisPIwithDifferentBondTypes.xml --excl > exclusion
#/usr/bin/csg_dump -v --cg mappingcisPIwithDifferentBondTypes.xml > bonddefinition
#$GMX grompp -f nvt.mdp -c confnojumpsinglechain.gro 
#$GMX mdrun -tableb table_d0.xvg table_d1.xvg -nt 16
$MPIRUN -np 32 $LAMMPS_PATH -in qthrice.lammps > out.interface
date > endtime
mv ../job$Jobid $PBS_O_WORKDIR
#####==============================
