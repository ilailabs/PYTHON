
for i=0.0:0.1:2
harmonic3d(i)
system('lmp_daily -in check.lammps')
temp=read_file2mat(46,46,'log.lammps');

em = [em;[i,temp(2)]];
end