function lmp2lmp(filename)
%filename='6s9_mn12_221_sz555.lmp';
filen=strcat(erase(filename,'.lmp'),'new','.lmp');
fid=fopen(filename);
for i=1:2
lt=fgetl(fid);
end
l3=fgetl(fid);

n=str2num(l3(8:14));
A=read_file2mat(16,n+15,filename);
%A is for cu, conv it for al and write lmp
lcc=3.639029;
lca=4.05;
Btemp=[A(:,3)./lcc,A(:,4)./lcc,A(:,5)./lcc];
B=[Btemp(:,1).*lca,Btemp(:,2).*lca,Btemp(:,3).*lca];
write_lmpdatafile_m(B,filen)

%--- sub-fuc ---%

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
        q=[q;temp];
end
fclose(fid);
A=str2num(q);
end
%---%
function write_lmpdatafile_m(M,filen)
nfile=filen;
s=size(M);
natoms=s(1);
q=M;
fi=fopen(nfile,'w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');
fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 
fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
p=4.05;%input('\nLattice parameter=');
mass1=26.98153860;%input('Atomic mass=');
hi=max(q);
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
    fprintf(fi,'%d\t%c\t%d\t%c\t%.6f\t%c\t%.6f\t%c\t%.6f\n',q(i,1),' ',q(i,2),' ',q(i,3),' ',q(i,4),' ',q(i,5));
end

fprintf('Sucessful!\n');
end