%this func gen lmp input file for 1d atomic chain; A-AB-B;
function lj3Datafile(nAtoms,latticeP,mass)

tAtoms=sum(nAtoms);
ctr=1;
xc=0.0;

%Crystal A
indexA=ctr;
indexA_end=nAtoms(1);
for i=indexA:indexA_end
    q(ctr,:)=[ctr, 1, [xc 0 0]];ctr=ctr+1;xc=xc+latticeP(1);
end

%interface
xc=q(end,3) + latticeP(2);
indexS=ctr;
indexS_end=indexS+nAtoms(2)-1;
for i=indexS:indexS_end
     q(ctr,:)=[ctr, 2, [xc 0 0]];ctr=ctr+1;xc=xc+latticeP(2);
end

%Crystal B
xc=q(end,3) + latticeP(3);
indexB=ctr;
indexB_end=indexB+nAtoms(3)-1;
for i=indexB:indexB_end
    q(ctr,:)=[ctr, 3, [xc 0 0]];ctr=ctr+1;xc=xc+latticeP(3);
end

fi=fopen('ppdatafile.lmp','w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');
fprintf(fi,'%s%d%6s\n','         ',tAtoms,'  atoms');
ntypeatom=3; 

fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
hi=max(q(:,3));
% lo=min(q);
xhi=hi+1*latticeP(1); yhi=10*latticeP(1); zhi=10*latticeP(1);
% xlo=lo(1); 
% ylo=lo(2);
% zlo=lo(3);
xlo=0.00; 
ylo=0.00;
zlo=0.00;
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',xlo,' ',xhi,' ',' xlo xhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',ylo,' ',yhi,' ',' ylo yhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n\n',' ',zlo,' ',zhi,' ',' zlo zhi');

fprintf(fi,'%s\n\n','Masses');
fprintf(fi,'%s%.6f\n%s',' 1 ',mass(1));
fprintf(fi,'%s%.6f\n%s',' 2 ',mass(2));
fprintf(fi,'%s%.6f%s',' 3 ',mass(3));

fprintf(fi,'\n\n%s\n\n','Atoms');

for i=1:tAtoms
    fprintf(fi,'%d\t%c\t%d\t%c\t%.6f\t%c\t%.6f\t%c\t%.6f\n',q(i,1),' ',q(i,2),' ',q(i,3),' ',q(i,4),' ',q(i,5));
end

fprintf('fileWritten Successfully!\n');
% end