%lmp input file for 1d atomic chain
%for this potential lc = 4.029
function lj1Datafile(natoms,latticeP, mass1)

q=[(0:(natoms-1))'*latticeP, zeros(natoms, 2)];

fi=fopen('ldatafile.lmp','w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');
fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 

fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
% p=1.0;%input('\nLattice parameter=');
% mass1=26.982;%input('Atomic mass=');
hi=max(q);
lo=min(q);
xhi=hi(1)+latticeP; yhi=10*latticeP; zhi=10*latticeP;
% xlo=lo(1); 
xlo=0.00; 
ylo=0.00;
zlo=0.00;
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',xlo,' ',xhi,' ',' xlo xhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',ylo,' ',yhi,' ',' ylo yhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n\n',' ',zlo,' ',zhi,' ',' zlo zhi');

fprintf(fi,'%s\n\n','Masses');
fprintf(fi,'%s%.6f\n\n%s\n\n',' 1 ',mass1,'Atoms');

%making array for "Atoms" section for data file

q=[[1:natoms]' ones(natoms,1) q];

for i=1:natoms
    fprintf(fi,'%d\t%c\t%d\t%c\t%.6f\t%c\t%.6f\t%c\t%.6f\n',q(i,1),' ',q(i,2),' ',q(i,3),' ',q(i,4),' ',q(i,5));
end

fprintf('Sucessful!\n');
