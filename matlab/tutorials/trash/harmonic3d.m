% this will create a harmonic 2d crystall lattice with atoms and bonds as specified;
% specify variable 'vel'

function harmonic3d(a)
natoms = [4, 4, 4];
m=natoms(1);n = natoms(2);z = natoms(3);

% a=0.750;
nAtoms = m*n*z;
nBonds = 3*nAtoms;
natomTypes=1;atom1=1;
nbondTypes=1;bond1=1;
mass1=1.0;
bond1coeff=[0.5 1.0];

cellz=[0.000 z].*a;
celly=[0.000 n].*a;
cellx=[0.000 m].*a;

fid = fopen('pdatafile.lmp','w');
fprintf(fid,'%s%d\n','#File written by pdata.m;SC(001) mono atomic single chain for natoms=',m*n);
fprintf(fid,'\n\t\t%d%s%s',nAtoms,'  ','atoms');
fprintf(fid,'\n\t\t%d%s%s', nBonds,'  ','bonds');
fprintf(fid,'\n\n\t\t%d%s',natomTypes,' atom types');
fprintf(fid,'\n\t\t%d%s\n',natomTypes,' bond types');
fprintf(fid,'\n\t%.6f\t%.6f%s',cellx(1),cellx(2),' xlo xhi');
fprintf(fid,'\n\t%.6f\t%.6f%s',celly(1),celly(2),' ylo yhi');
fprintf(fid,'\n\t%.6f\t%.6f%s',cellz(1),cellz(2),' zlo zhi');

%ATOMS
fprintf(fid,'\n\n%s\n\n','Atoms');
ctr=1;
for k=1:z
for i=1:natoms(1)
    for j=1:natoms(2)
    cord=[i-1 , j-1, k-1].*a;
    fprintf(fid,'%d%s%d%s%d\t\t',ctr,' ',atom1,' ',atom1);
    fprintf(fid,'%.8f\t\t%.8f\t\t%.8f\n',cord(1),cord(2),cord(3));
    Pos(ctr,:)=cord;
    ctr = ctr+1;
    end
end
end

% %VELOCITIES
% fprintf(fid,'\n\n%s\n\n','Velocities');
% %give zero vel to other atomIDs%
% Vel=[(1:nAtoms)', zeros(nAtoms,3)];
% 
% nRows = length(vel);
% ctrI = 1;

% while(ctrI<nRows)    
%     ind = vel(ctrI,1);
%     Vel(ind,:)=vel(ctrI,:);    
%     ctrI=ctrI+1;
% end
% vel=Vel;
% 
% ctrV=1;
% for i=1:length(vel)
%     fprintf(fid,'%d%s%.8f\t\t%.8f\t\t%.8f\n',vel(i,1),' ',vel(i,2),vel(i,3),vel(i,4));
%     ctrV = ctrV+1;
% end
%End of Velocities%

fprintf(fid,'\n%s\n\n','Bonds');

val = 1;
for k=1:z
for i=1:m
    for j=1:n
        M(i,j,k)=val;val=val+1;
    end
end
end
ctr0=1;
type = 1;

for k=1:z
for i=1:m
    for j=1:n
    fprintf(fid,'%d%s%d%s%d%s%d\n',ctr0,' ',type,' ',M(i,j,k),' ',M(i,mapk(n,j+1),k));ctr0 = ctr0+1;
    fprintf(fid,'%d%s%d%s%d%s%d\n',ctr0,' ',type,' ',M(i,j,k),' ',M(mapk(m,i+1),j,k));ctr0 = ctr0+1;
    fprintf(fid,'%d%s%d%s%d%s%d\n',ctr0,' ',type,' ',M(i,j,k),' ',M(i,j,mapk(z,k+1)));ctr0 = ctr0+1;
    end
end
end

fclose(fid);
end
%===sub-fucntions===%
function k=mapk(limit,index)
%if index exceeds limit, then remap index
while(index>limit)
    index = index - limit;
end
k=index;
end
%===end-1===%
