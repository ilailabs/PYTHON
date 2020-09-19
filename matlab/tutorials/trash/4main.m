##n=1000
a = 2^(1/6)*1.2;
WriteDataFile1dHM;
system(['lmp_daily -var lc ',num2str(a),' < onedlj.lammps']);
