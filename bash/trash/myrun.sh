#!/bin/bash

#MPIPATH="/Apps/OPENMPI/openmpi-4.0.1/bin/mpirun"
#LAMMPS_PATH="/Apps/LAMMPS/lammps-12Dec18/src/lmp_g++_openmpi"
#INPUT='bmin.lammps'

#for i in $(ls *.lmp)
#do
#echo $i
#$MPIPATH -np 8 $LAMMPS_PATH -var ipfile $file -in $INPUT
#done

lmp_daily -var ipfile min65.lmp -in bmin.lammps

