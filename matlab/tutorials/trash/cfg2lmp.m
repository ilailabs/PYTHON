%this doest work use atomsk to conv cfg to lmp file
%-----------------INPUT--------------------------------%
p=3.639;
m=63.546;
%------------------------------------------------------%
ithfile=1;
list=dir('*.cfg');
filename=list.name(ithfile,:);
A=cfg2mat(filename);
write_lmpdatafile_m(p,m,A);

%---------------------------------------------------------%
function mat=cfg2mat(filename)
fid=fopen(filename);
for i=1:1
    natoms = fgetl(fid);
end
b=str2num(natoms(22:end));
% read the next few empty lines
for i=2:17
    natoms = fgetl(fid);
end
string=fgetl(fid);
temp=[];
q=[];

for i=1:b
        temp=fgetl(fid);
        temp=str2num(temp);
        q=[q;temp];
end
fclose(fid);
mat=q;
end
%-------------------writelmp---------------------------%
function write_lmpdatafile_m(p,m,M)
s=size(M);
natoms=s(1);

q=M.*p;
fi=fopen('datafile.dat','w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');

fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 

fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
hi=max(q)+0.5*p;
lo=min(q);
xhi=hi(1); yhi=hi(2); zhi=hi(3);
xlo=lo(1); ylo=lo(2); zlo=lo(3);
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',xlo,' ',xhi,' ',' xlo xhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',ylo,' ',yhi,' ',' ylo yhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n\n',' ',zlo,' ',zhi,' ',' zlo zhi');

fprintf(fi,'%s\n\n','Masses');
fprintf(fi,'%s%.6f\n\n%s\n\n',' 1 ',m,'Atoms');

%making array for "Atoms" section for data file

q=[[1:natoms]' ones(natoms,1) q];

for i=1:natoms
    fprintf(fi,'%d\t%c\t%d\t%c\t%.6f\t%c\t%.6f\t%c\t%.6f\n',q(i,1),' ',q(i,2),' ',q(i,3),' ',q(i,4),' ',q(i,5));
end

fprintf('Sucessfully written datafile.dat !\n');
end
