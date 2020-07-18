mkdir files_cfg
mkdir files_cfg/temp

mkdir files_lmp
mkdir files_lmp/temp

mkdir lammps_dump
mkdir lammps_dump/temp

mkdir lammps_log
mkdir lammps_log/temp

mkdir files_mat
mkdir main

cd files_cfg
#mv *.cfg temp
cd ..

cd files_lmp
mv *.lmp temp
cd ..

cd lammps_dump
mv *_min temp
cd ..

cd lammps_log
mv *_log.txt temp
cd ..
echo FILES MOVED 

