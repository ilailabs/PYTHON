%this script will create 1D mono atomic chain of given number of ip atoms

natoms=400;

a=1.00;
bonds=natoms;
natomTypes=1;atom1=1;
nbondTypes=2;bond1=[1, natoms./2];bond2=[bond1(2)+1, natoms];
mass1=1.0;
bond1coeff=[0.25 1.0];
bond2coeff=[0.5, 1.0];

cellz=[-0.0001 0.0001];
celly=[-1 1].*a;
cellx=[0.000 natoms].*a;

fid = fopen('pdatafile.lmp','w');
fprintf(fid,'%s%d\n','#File written by pdata.m;SC(001) mono atomic single chain for natoms=',natoms);
fprintf(fid,'\n\t\t%d%s%s',natoms,'  ','atoms');
fprintf(fid,'\n\t\t%d%s%s',natoms,'  ','bonds');
fprintf(fid,'\n\n\t\t%d%s',natomTypes,' atom types');
fprintf(fid,'\n\t\t%d%s\n',nbondTypes,' bond types');
fprintf(fid,'\n\t%.6f\t%.6f%s',cellx(1),cellx(2),' xlo xhi');
fprintf(fid,'\n\t%.6f\t%.6f%s',celly(1),celly(2),' ylo yhi');
fprintf(fid,'\n\t%.6f\t%.6f%s',cellz(1),cellz(2),' zlo zhi');
fprintf(fid,'\n\n%s\n\n','Atoms');
for i=1:natoms
    cord=[i-1 , 0, 0].*a;
    fprintf(fid,'%d%s%d%s%d\t\t',i,' ',atom1,' ',atom1);
    fprintf(fid,'%.8f\t\t%.8f\t\t%.8f\n',cord(1),cord(2),cord(3));
end
fprintf(fid,'\n%s\n\n','Bonds');
%for bond type 1
for i=bond1(1):bond1(2)
    fprintf(fid,'%d%s%d%s%d%s%d\n',i,' ',1,' ',i,' ',i+1);
end

%for bond type 2
for i=bond2(1):bond2(2)
    if(i~=natoms)
    fprintf(fid,'%d%s%d%s%d%s%d\n',i,' ',2,' ',i,' ',i+1);
    elseif(i==natoms)
    fprintf(fid,'%d%s%d%s%d%s%d\n',i,' ',2,' ',i,' ',1);
    end
end

fprintf(fid,'\n%s\n','Bond Coeffs');
fprintf(fid,'\n%d%s%.2f%s%.2f',1,' ',bond1coeff(1),' ',bond1coeff(2));
fprintf(fid,'\n%d%s%.2f%s%.2f',2,' ',bond2coeff(1),' ',bond2coeff(2));

fprintf(fid,'\n\n%s\n','Masses');
fprintf(fid,'\n%d%s%.2f',1,' ',mass1);
fclose(fid);

% %writing mapfile for fix-phonon
% fi=fopen('pmapfile.in','w');
% fprintf(fi,'%d%s%d%s%d%s%d',natoms,' ',1,' ',1,' ',1);
% fprintf(fi,'\n%s','#l1 l2 l3 k atom_id');
% for i=1:natoms
%     fprintf(fi,'\n%d%s%d%s%d%s%d%s%d',(i-1),' ',0,' ',0,' ',0,' ',i);
% end
% fclose(fi);
