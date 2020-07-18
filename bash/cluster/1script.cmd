#!/bin/bash

INPUT=batchmin.lammps

for i in $(ls *.lmp)
do
echo $i
/Apps/openmpi/bin/mpirun -np 16 /Apps/lammps/src/lmp_mpi -in $INPUT 
done

