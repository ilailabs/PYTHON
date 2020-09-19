%this will create a harmonic 2d crystall lattice with atoms and bonds as specified;

natoms = [400, 10];
m=natoms(1);n = natoms(2);

a=1.00;
nAtoms = natoms(1)*natoms(2);
nBonds = 2*natoms(1)*natoms(2);
natomTypes=1;atom1=1;
nbondTypes=2;bond1=1;
mass1=1.0;
bond1coeff=[0.5 1.0];

cellz=[-0.0001 0.0001];
celly=[0.000 natoms(2)].*a;
cellx=[0.000 natoms(1)].*a;

fid = fopen('pdatafile_2d_diffk.lmp','w');
fprintf(fid,'%s%d\n','#File written by pdata.m;SC(001) mono atomic single chain for natoms=',m*n);
fprintf(fid,'\n\t\t%d%s%s',natoms(1)*natoms(2),'  ','atoms');
fprintf(fid,'\n\t\t%d%s%s', nBonds,'  ','bonds');
fprintf(fid,'\n\n\t\t%d%s',natomTypes,' atom types');
fprintf(fid,'\n\t\t%d%s\n',nbondTypes,' bond types');
fprintf(fid,'\n\t%.6f\t%.6f%s',cellx(1),cellx(2),' xlo xhi');
fprintf(fid,'\n\t%.6f\t%.6f%s',celly(1),celly(2),' ylo yhi');
fprintf(fid,'\n\t%.6f\t%.6f%s',cellz(1),cellz(2),' zlo zhi');
fprintf(fid,'\n\n%s\n\n','Atoms');

ctr=1;
for i=1:natoms(1)
    for j=1:natoms(2)
    cord=[i-1 , j-1, 0].*a;
    fprintf(fid,'%d%s%d%s%d\t\t',ctr,' ',atom1,' ',atom1);
    fprintf(fid,'%.8f\t\t%.8f\t\t%.8f\n',cord(1),cord(2),cord(3));
    ctr = ctr+1;
    end
end
fprintf(fid,'\n%s\n\n','Bonds');

val = 1;
for i=1:m
    for j=1:n
        M(i,j)=val;val=val+1;
    end
end
ctr0=1;
type1 = 1;


for i=1:m/2
    for j=1:n
    fprintf(fid,'%d%s%d%s%d%s%d\n',ctr0,' ',type1,' ',M(i,j),' ',M(i,mapk(n,j+1)));ctr0 = ctr0+1;
    fprintf(fid,'%d%s%d%s%d%s%d\n',ctr0,' ',type1,' ',M(i,j),' ',M(mapk(m,i+1),j));ctr0 = ctr0+1;
    end
end

type2=2;
for i=(m/2+1):m
    for j=1:n
    fprintf(fid,'%d%s%d%s%d%s%d\n',ctr0,' ',type2,' ',M(i,j),' ',M(i,mapk(n,j+1)));ctr0 = ctr0+1;
    fprintf(fid,'%d%s%d%s%d%s%d\n',ctr0,' ',type2,' ',M(i,j),' ',M(mapk(m,i+1),j));ctr0 = ctr0+1;
    end
end

fclose(fid);

%---subFunction---%
function k=mapk(limit,index)
%if index exceeds limit, then remap index
while(index>limit)
    index = index - limit;
end
k=index;
end