#!/bin/bash
#PBS -l nodes=node04:ppn=16
#####=========WALL-TIME========================
#PBS -l walltime=240:00:00
#####=========GIVE THE NAME OF THE JOB==============
#PBS -N IMPRINT_PROJECT
#####==============================
#PBS -mea
#####==========GIVE YOUR EMAIL ADDRESS HERE================
#PBS -M me16d404@smail.iitm.ac.in
#####===================================
MPIPATH="/Apps/openmpi/bin/mpirun"
LAMMPS_PATH="/Apps/lammps/src/lmp_mpi"
#####=========GIVE THE NAME OF THE INPUT FILE==============

cd $PBS_O_WORKDIR

fno=(1 2 3)
gbthick=(7.8170560839,7.6846587524,8.0263821858)



for i in ${!fno[@]};
do
/Apps/openmpi/bin/mpirun -np 16 /Apps/lammps/src/lmp_mpi -var f_no ${fno[$i]} -var tt ${gbthick[$i]} -in velocity.lammps
done

#####==============================


