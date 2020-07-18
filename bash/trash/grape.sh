run_file=s9_221
export OMP_NUM_THREADS=4
mpirun -np 4 lmp_daily -var filename ${run_file}  -in gbene.lmp

run_file=s11_113
export OMP_NUM_THREADS=4
mpirun -np 4 lmp_daily -var filename ${run_file}  -in gbene.lmp

run_file=s11_332
export OMP_NUM_THREADS=4
mpirun -np 4 lmp_daily -var filename ${run_file}  -in gbene.lmp

mv *_log.txt lammps_log

#matlab -nodisplay -nosplash -nodesktop -r "run('write_notes.m');exit;"


