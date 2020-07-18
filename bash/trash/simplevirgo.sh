#!/bin/bash
#@ job_name= test_run
#@ class      = Small
#@ output     = $(job_name).$(jobid).output
#@ error      = $(job_name).$(jobid).error
#@ job_type   = MPICH
#@ node = 1
#@ tasks_per_node = 8
#@ notification = complete
#@ notify_user = drsahoo12@gmail.com
#@ queue
Jobid=`echo $LOADL_STEP_ID | cut -f 6 -d .`


tmpdir=$HOME/scratch/job$Jobid
mkdir -p $tmpdir; 
cd $tmpdir
cp -R $LOADL_STEP_INITDIR/* $tmpdir
cat $LOADL_HOSTFILE > ./host.list
source $HOME/

             mpiexec.hydra -np 8 /sware/lammps/lammps-30Sep16/src/lmp_mpi -var exp -in 1_input.in

mv ../job$Jobid $LOADL_STEP_INITDIR

