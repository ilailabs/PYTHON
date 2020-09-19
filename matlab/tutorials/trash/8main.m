A=read_file2mat(99,1844,'log.lammps');
B=read_file2mat(1883,71668,'log.lammps');
nT=[A(:,1);B(:,1)];pe=[A(:,1);B(:,1)];
plot()