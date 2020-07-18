#!/bin/bash
#@ job_name= test_run
#@ class      = Medium128
#@ output     = $(job_name).$(jobid).output
#@ error      = $(job_name).$(jobid).error
#@ job_type   = MPICH
#@ node = 2
#@ tasks_per_node = 16
#@ notification = complete
#@ notify_user = drsahoo12@gmail.com
#@ queue

fnames=(*.lmp)
for i in ${fnames[*]};
do
runfile=${i%.lmp}
source $HOME/.profile
mpiexec.hydra -np 32 /sware/lammps/lammps-30Sep16/src/lmp_mpi -var filename $runfile -in template.lammps > out.interface
mv *_log.txt logfiles
mv dump.* dumpfiles
mv $i lmp_done
done
