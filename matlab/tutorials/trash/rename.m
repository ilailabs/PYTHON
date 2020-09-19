fname = "hexPlane.lmp";
nl = nlines(fname);
AB = read_file2mat(10,nl,fname);
cA = AB(:,3:5);
[delx, lx] = findRepeatDist(cA(:,1));
[dely, ly] = findRepeatDist(cA(:,2));

cAn = sortrows(cA,2);
cAn = sortrows(cA,1);

write_lmpdatafile_m(cAn, delx, 26.98);

%%sub-fucntion%%

function n=nlines(filename)
fid=fopen(filename);
count = 0;
while true
  if ~ischar( fgetl(fid) ); break; end
  count = count + 1;
end
fclose(fid);
n=count;
end

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

function [deltaL, l]=findRepeatDist(M)
k=unique(M);
l=length(k);
deltaL = range(k)/l;
end

function write_lmpdatafile_m(q,lp,mass1)
[natoms, ~]=size(q);
fi=fopen('hexlattice.lmp','w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');
fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 

fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
p=lp;
hi=max(q)+1*p;
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




