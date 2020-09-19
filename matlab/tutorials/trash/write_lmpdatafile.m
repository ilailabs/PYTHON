function write_lmpdatafile(filename)

fid=fopen(filename,'r');
natoms=fscanf(fid,'%d') %only reads the first line, when scanned next time already scaned line isn't considered
details=fgets(fid)

% for i=1:2
%     a=fgets(fid)
% end

q=fscanf(fid,'%*s %f %f %f\n',[3 natoms]);
q=q'
fclose(fid)

fi=fopen('data.file','w');
fprintf(fi,'%s\n','LAMMPS description');

fprintf(fi,'%c%d%6s\n',' ',natoms,' atoms');
ntypeatom=1; 

fprintf(fi,'%c%d%11s\n',' ',ntypeatom,' atom types');
xlo=0.0;
p=3.651;%('\nLattice parameter=');
mass1=63.546;%input('Atomic mass=');
hi=max(q)+0.5*p;
lo=min(q);
xhi=hi(1); yhi=hi(2); zhi=hi(3);
xlo=lo(1); ylo=lo(2); zlo=lo(3);
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',xlo,' ',xhi,' ',' xlo xhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',ylo,' ',yhi,' ',' ylo yhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n\n',' ',zlo,' ',zhi,' ',' zlo zhi');

fprintf(fi,'%s\n\n','Masses');
fprintf(fi,'%s%.6f\n\n%s\n\n',' 1 ',mass1,'Atoms');

%making array for "Atoms" section for data file

q=[[1:natoms]' ones(natoms,1) q];

for i=1:natoms
    fprintf(fi,'%d%c%d%c%.6f%c%.6f%c%.6f\n',q(i,1),' ',q(i,2),' ',q(i,3),' ',q(i,4),' ',q(i,5));
end

fprintf('sucessful!\n');
