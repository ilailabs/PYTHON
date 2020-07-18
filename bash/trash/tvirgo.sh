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
Jobid=`echo $LOADL_STEP_ID | cut -f 6 -d .`


tmpdir=$HOME/scratch/job$Jobid
mkdir -p $tmpdir; 
cd $tmpdir
cp -R $LOADL_STEP_INITDIR/* $tmpdir
cat $LOADL_HOSTFILE > ./host.list
source $HOME/.profile
mpiexec.hydra -np 32 /sware/lammps/lammps-30Sep16/src/lmp_mpi -in gbedump.lammps > out.interface
mv ../job$Jobid $LOADL_STEP_INITDIR
