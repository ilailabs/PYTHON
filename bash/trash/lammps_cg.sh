#!/bin/bash
LAMMPS="mpiexec.hydra -np 32 -f $LOADL_HOSTFILE -ppn 16 /sware/lammps/lammps-9Dec14/src/lmp_intel_cpu"

sim=5

for iteration in {1..2}
	$LAMMPS -var a $sim < input.in
	let sim=sim+5   
done

