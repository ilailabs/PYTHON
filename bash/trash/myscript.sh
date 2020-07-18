dirName="GB1"
cd dirName
lmp_daily -in ../quench.lammps
#/Apps/openmpi/bin/mpirun -np 16 /Apps/lammps/src/lmp_mpi -in ../quench.lammps > out_interface_$mAng

##conv2lmp
# for fname in $(ls h1dump*)
# do
# python ../dump2lmp.py $fname
# done
#
# ##run_min
# for i in $(ls *.lmp)
# do
# echo 'energy min running' $i
# #lmp_daily -var ipfile $i -in ../batchMin.lammps
# /Apps/openmpi/bin/mpirun -np 16 /Apps/lammps/src/lmp_mpi -var ipfile $i -in ../batchMin.lammps
# done
#
# ##read_results
# python ../readLogfiles.py
# cd ..
# done


#####==============================
