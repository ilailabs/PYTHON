xn=10;yn=6;
a=4;
a=sqrt(2)*a/2;
av=[2*a*cosd(30), 0];
bv=[a*cosd(30), a*sind(30)];

lx=2*a*cosd(30);
ly=2*a*sind(30);

uc=[ 0,0 ...
    ;bv]; 

%------------rot by 90 deg -------------%
the=90;
R=[cosd(the), -sind(the); sind(the), cosd(the)];
uc=uc*R;

tl=lx;
lx=ly;
ly=tl;

cord=[];
for i=0:xn
    for j=0:yn
       temp=uc+[lx*i, ly*j];
       cord=[cord;temp];
    end
end

cord=[cord, zeros(length(cord),1)];
write_lmpdatafile_m(cord,lx,ly)

function write_lmpdatafile_m(M,lx,ly)
s=size(M);
natoms=s(1);

q=M;
fi=fopen('data.file','w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');

fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 

fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
mass1=26.9815386;%input('Atomic mass=');

xlo=0;
xhi=max(q(:,1))+0.5*lx;
ylo=0;
yhi=max(q(:,2))+0.5*ly;
zlo=0;
zhi=100;

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


