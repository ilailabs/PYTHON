function q=readxyz(filename)
fid=fopen(filename,'r');
natoms=fscanf(fid,'%d');
details=fgets(fid);
q=fscanf(fid,'%*s %f %f %f\n',[3 natoms]);
q=q';
fclose(fid)