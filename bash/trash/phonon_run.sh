#run pdata.m
lmp_daily -in phonon_input.lammps
./phana phonon.bin.2000000 < in.disp
gnuplot plot.disp
