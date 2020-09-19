
% i=4.02;
string1 = ['atomsk --create fcc ',num2str(i),' Al orient [100] [010] [001] lmp'];
system(string1);
system('lmp_daily -in new.lammps');
temp = read_file2mat(59,59,'log.lammps');
delete('Al.lmp')
mat = [mat;i, temp(2)];