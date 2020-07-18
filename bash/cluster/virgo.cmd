#!/bin/bash
#@ job_name= IMPRINT
#@ class      = Medium128
#@ output     = $(job_name).$(jobid).output
#@ error      = $(job_name).$(jobid).error
#@ job_type   = MPICH
#@ node = 2
#@ tasks_per_node = 16
#@ notification = complete
#@ notify_user = edwinjoe100@gmail.com
#@ queue
Jobid=`echo $LOADL_STEP_ID | cut -f 6 -d .`


tmpdir=$HOME/scratch/job$Jobid
mkdir -p $tmpdir; 
cd $tmpdir
cp -R $LOADL_STEP_INITDIR/* $tmpdir
cat $LOADL_HOSTFILE > ./host.list
source $HOME/.profile
mpiexec.hydra -np 32 -f $LOADL_HOSTFILE -ppn 16 /sware/lammps/lammps-30Sep16/src/lmp_mpi -in onedimal.lammps > out.interface
mv ../job$Jobid $LOADL_STEP_INITDIR

