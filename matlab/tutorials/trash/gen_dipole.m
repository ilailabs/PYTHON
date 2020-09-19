clear;
%----------------------------------------------specify_input
a=3.147;         %lp in convention non primitive cell vec
cell_type='bcc'; % sc, bcc or fcc
element='Mo';
X=[1 1 1];
Y=[-1 0 1];
Z=[1 -2 1];
rep=[6 24 36];

splitr=[1.5,1,1.5]./4;new=1/3; %ths splits pc into 3 parts in y dir
%-----------------------------------------------end_of_input

command=strcat('atomsk --create'," ",cell_type," ",'1.000'," ",element," ",'orient'," ",mat2str(X)," ",mat2str(Y)," ",mat2str(Z)," ",'unitcell.lmp');
system(char(command));
[p0,p8,mass,A1]=read_lmpfile('unitcell.lmp');
UC=A1(:,3:5);
PC=replicate(UC,p8,rep);
tol=0.1;
a1=[0.5*rep(1),0,0]-tol;a2=[0.5*rep(1),0.25*rep(2),rep(3)]+tol;
a3=[0.5*rep(1),0.75*rep(2),0]-tol;a4=[0.5*rep(1),rep(2),rep(3)]+tol;
b1=a1.*p8;b2=a2.*p8;
b3=a3.*p8;b4=a4.*p8;
RHP=remvlattice(PC,b1,b2);
RHP=remvlattice(RHP,b3,b4);
write_xyzfile(RHP*a,element,'hp_removed_dipole.xyz')
write_lmpdatafile_m(RHP*a,a,mass,p8,rep,'hp_removed_dipole.lmp')

dpb=[0.5*rep(1),0.25*rep(2)];dpt=[0.5*rep(1),0.75*rep(2)];
c1=[0 0 0]-tol;c2=[rep(1),splitr(1)*rep(2),rep(3)]+tol;d1=c1.*p8;d2=c2.*p8;
c3=[0 (splitr(1)+splitr(2))*rep(2) 0]-tol;c4=[rep(1),rep(2),rep(3)]+tol;d3=c3.*p8;d4=c4.*p8;
PC_b=onlylattice(PC,d1,d2);
PC_t=onlylattice(PC,d3,d4);
PC_m=remvlattice(PC,d1,d2);PC_m=remvlattice(PC_m,d3,d4);

DC_t=ins_disz(PC_t,dpt,p8,'py');
ttl=DC_t(:,2)>=(min(PC_t(:,2))-0.5*p8(2));
DC_t=DC_t(ttl,:,:);;%to ensure no points out the box;
DC_b=ins_disz(PC_b,dpb,p8,'ny');

DC=[DC_t;PC_m;DC_b];
write_xyzfile(DC*a,element,'dislocation_dipole.xyz')
write_lmpdatafile_m(DC*a,a,mass,p8,rep,'dislocation_dipole.lmp')

write_xyzfile(PC*a,element,'perfect_crystal.xyz')
write_lmpdatafile_m(PC*a,a,mass,p8,rep,'perfect_crystal.lmp')



%______________________________________________________________________________________________________________________
%---------------------------------------------------------------------------------------------------------------------%
function line=mat2str(X)
line=strcat('[',num2str(X(1)),num2str(X(2)),num2str(X(3)),']');
end

function [p0,p8,mass,uc]=read_lmpfile(filename)
%filename='test.lmp';
% l=6;

%find tot no of lines in a file
fid = fopen(filename);
res={};
while ~feof(fid)
  res{end+1,1} =fgetl(fid);
end
fclose(fid);
number_of_lines=numel(res);

%-----------------------------------
fid=fopen(filename);
for i=1:5
tline = fgetl(fid);
end

%reading box size
s1=fgetl(fid);
s2=fgetl(fid);
s3=fgetl(fid);
p0(1)=str2num(s1(1,7:16));
p0(2)=str2num(s2(1,7:16));
p0(3)=str2num(s3(1,7:16));
p8(1)=str2num(s1(1,24:33));
p8(2)=str2num(s2(1,24:33));
p8(3)=str2num(s3(1,24:33));


%reading mass

for i=1:3
    tline = fgetl(fid);
end
sm=fgetl(fid);
mass=str2num(sm(1,15:25));

%reading unit cell co ordinates
fclose(fid);fid = fopen(filename);
temp=[];
q=[];

for i=1:15
tline = fgetl(fid);
end

for i=16:number_of_lines
        temp=fgetl(fid);
        temp=str2num(temp);
        q=[q;temp];
end
fclose(fid);
uc=q;
end

function [M]=replicate(A0,lp,rep)
M=A0;
s=length(A0);
for i=1:rep(1)-1
    C1=lp(1).*ones(s,1);
    C0=zeros(s,1);
           temp=A0+[C1*i, C0, C0];
        M=[M;temp];
end

A0=M;
s=length(A0);
for i=1:rep(2)-1
    C1=lp(2).*ones(s,1);
    C0=zeros(s,1);
        temp=A0+[C0, C1*i, C0];
        M=[M;temp];
end
A0=M;
s=length(A0);
for i=1:rep(3)-1
    C1=lp(3).*ones(s,1);
    C0=zeros(s,1);
        temp=A0+[C0,C0, C1*i];
        M=[M;temp];
end
end
function M=remvlattice(N,p0,p8)
%the default x, y, z directions are assumed
lx=N(:,1)<(p8(1)+0.1) & N(:,1)>=(p0(1)+0.0);
ly=N(:,2)<(p8(2)+0.1) & N(:,2)>=(p0(2)+0.0);
lz=N(:,3)<(p8(3)+0.1) & N(:,3)>=(p0(3)+0.0);
log=lx & ly & lz;
M=N(~log,:,:,:);
end
function write_xyzfile(xy,atom,filename)
c0=size(xy);
c=c0(1);
filename=sprintf(filename);
fid=fopen(filename,'w+t');
fprintf(fid, '%d\n',c);
fprintf(fid, 'coordinates of %s atoms\n', atom);
for ii=1:c
    fprintf(fid,'%s\t',atom);
    fprintf(fid, '%.2f\t %.2f\t %.2f\t \n',xy(ii,:));
end
fclose(fid);
fprintf('.xyz file written succesfully\n');
end
function write_lmpdatafile_m(M,a,mass,lp,boxs,filename)
s=size(M);
natoms=s(1);

q=M;
fi=fopen(filename,'w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');

fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 

fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
%p=3.147;%input('\nLattice parameter=');
mass1=mass;%input('Atomic mass=');
hi=a*boxs.*lp;
lo=[0 0 0];
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

fprintf('.lmp file written successfully!\n');
end
function M=onlylattice(N,p0,p8)
%the default x, y, z directions are assumed
lx=N(:,1)<(p8(1)+0.1) & N(:,1)>=(p0(1)+0.0);
ly=N(:,2)<(p8(2)+0.1) & N(:,2)>=(p0(2)+0.0);
lz=N(:,3)<(p8(3)+0.1) & N(:,3)>=(p0(3)+0.0);
log=lx & ly & lz;
M=N(log,:,:,:);
end
function M=dis2d(A,d,c)
a=1;
b=a;
B=A-d;
new=1/3;


ld=B(:,1)==0 & B(:,2)>0;
D=B(ld,:,:);
sd=size(D);

lo=B(:,1)==0 ;
C=B(~lo,:,:);
X=C(:,1);
Y=C(:,2);
Z=C(:,3);

xs=length(X);

for i=1:xs
    U(i)=(b/(2*pi))*(atan(Y(i)/X(i))+(1/(2-2*new))*(X(i)*Y(i))/(X(i)^2+Y(i)^2));
    V(i)=(-b/(2*pi))*(((1-2*new)/(4-4*new))*(log(X(i)^2+Y(i)^2))-(1/(2-2*new))*(Y(i)^2)/(X(i)^2+Y(i)^2));
end

zi=zeros(xs,1);

if c=='ny'
Dm=C+[U' V' zi];
elseif c=='py'
Dm=C+[-U' -V' zi];
end

X=D(:,1);Y=D(:,2);
for i=1:sd(1)
    %U(i)=(b/(2*pi))*(atan(Y(i)/X(i))+(1/(2-2*new))*(X(i)*Y(i))/(X(i)^2+Y(i)^2));
    Vo(i)=(-b/(2*pi))*(((1-2*new)/(4-4*new))*(log(X(i)^2+Y(i)^2))-(1/(2-2*new))*(Y(i)^2)/(X(i)^2+Y(i)^2));
end
if sd(1)==0
    M=[Dm];
else  
    
    
Do=D+[zeros(sd(1),1) Vo' zeros(sd(1),1)];
if c=='ny'
M=[Dm;Do];
elseif c=='py'
M=[Dm;[Do(:,1),-Do(:,2),Do(:,3)]];end

end
end

function M=ins_disz(N,pt,lp,c)
pt=pt.*lp(1,1:2);
t=N(:,3);
s=unique(t);
ss=length(s);
T=[];
for i=1:ss
    log=s(i)==t;
    temp=N(log,:,:);
    txy=[temp(:,1:2),zeros(length(temp),1)];
    %displace them
    nxy=dis2d(txy,[pt,0],c);
    tem=[nxy(:,1:2),s(i)*ones(length(nxy),1)]+[pt(1),pt(2),0];
    T=[T;tem];
end
M=T;
end
