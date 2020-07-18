#!/bin/bash
#@ job_name= IMPRINT
#@ class      = Medium128
#@ output     = $(job_name).$(jobid).output
#@ error      = $(job_name).$(jobid).error
#@ job_type   = MPICH
#@ node = 2
#@ tasks_per_node = 32
#@ notification = complete
#@ notify_user = edwinjoe100@gmail.com
#@ queue

for i in {1..1}
do
mpiexec.hydra -np 32 /sware/lammps/lammps-30Sep16/src/lmp_mpi -in onedimal.lammps
#lmp_daily -var Ai $i -in onedimal.lammps
done
