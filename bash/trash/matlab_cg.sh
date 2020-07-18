#!/bin/bash
MATLAB="mpiexec.hydra -np 32 -f $LOADL_HOSTFILE -ppn 16 matlab -nodesktop -nosplash -nojvm -nodisplay -r"

for iteration in {1..2}
$MATLAB angle_iteration
done
