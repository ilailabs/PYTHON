filename='dump.min0';

name=[filename,'.lmp']; %filename to be written
l1=10;
box=read_file2mat(5,8,filename); %geting the box dim
natoms=read_file2mat(4,4,filename);%getting no of atoms
l2=natoms+9;
M=read_file2mat(l1,l2,filename);%read coordinates
A=[M(:,3),M(:,4),M(:,5)];
lp=3.6390;
mass=63.546;
writelmp(A,box,lp,mass,name)

%function%
function writelmp(M,box,lp,mass,filen)
nfile=filen;
s=size(M);
natoms=s(1);
q=M;
fi=fopen(nfile,'w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');
fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 
fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
p=lp;%input('\nLattice parameter=');
mass1=mass;%input('Atomic mass=');
hi=box(:,2);
lo=box(:,1);
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
    fprintf(fi,'%d\t%c\t%d\t%c\t%.6f\t%c\t%.6f\t%c\t%.6f\n',q(i,1),' ',q(i,2),' ',q(i,3),' ',q(i,4),' ',q(i,5));
end

fprintf('Sucessful!\n');
end
%function%
function A=read_file2mat(a,b,filename)
%enter a line form, b upto, and filename

fid=fopen(filename);
for i=1:a-2
tline = fgetl(fid);
end
string=fgetl(fid);
temp=[];
q=[];
for i=a:b
        temp=fgetl(fid);
        temp=str2num(temp);
        q=[q;temp];
end
fclose(fid);
%A=str2num(q);
A=q;
end
