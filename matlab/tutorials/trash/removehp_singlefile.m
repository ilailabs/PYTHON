%function [M,N]=removehp(a,n,z)
clear
 a=1;n=25;
 
 z=n;
 
d=[n/2,n/2,0];

m=n;k=1;
count=1;
for a=0:m
    for b=0:m
        for c=0:m
            R(count,:)=[1 0 0].*a+[0 1 0].*b+[0 0 0].*c;
            count=count+1;
        end 
    end
end
%to generate face atoms postion
cnt=1;
for a=0:m-1
    for b=0:m-1
        for c=0:m-1
            R1(cnt,:)=[1 0 0].*a+[0 1 0].*b+[0 0 0].*c;
            cnt=cnt+1;
        end 
    end
end
% in x direction
R1c(:,1)=R1(:,1)+0.5;
R1c(:,2)=R1(:,2)+0.5;
R1c(:,3)=R1(:,3);

% in y direction
R2c(:,1)=R1(:,1)+0.5;
R2c(:,2)=R1(:,2);
R2c(:,3)=R1(:,3);

% in z direction
R3c(:,1)=R1(:,1);
R3c(:,2)=R1(:,2)+0.5;
R3c(:,3)=R1(:,3);
if logical(mod(k,2))
 M=[R;R1c];
 M=unique(M,'rows');
 l1=M(:,1)==m;
 M=M(~l1,:,:);
 l1=M(:,2)==m;
 M=M(~l1,:,:);
else
M=[R2c;R3c];
M=unique(M,'rows');
end
Ft=M;

%Jt=dis2d(Ft,d);
%-------------
%function M=dis2d(A,d)
A=Ft;
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

Dm=C+[U' V' zi];

X=D(:,1);Y=D(:,2);
for i=1:sd(1)
    %U(i)=(b/(2*pi))*(atan(Y(i)/X(i))+(1/(2-2*new))*(X(i)*Y(i))/(X(i)^2+Y(i)^2));
    Vo(i)=(-b/(2*pi))*(((1-2*new)/(4-4*new))*(log(X(i)^2+Y(i)^2))-(1/(2-2*new))*(Y(i)^2)/(X(i)^2+Y(i)^2));
end
Do=D+[zeros(sd(1),1) Vo' zeros(sd(1),1)];
M=[Dm;Do];
Jt=M;
%-------------
F=Ft;           J=Jt;
j=0.5;
cnt=1;
for i=2:(z*2)
    l=size(F);
    ind(cnt,1)=l(1,1);
    
        %------
    %function M=fcc_l(m,k)
    m=n;k=i;
count=1;
for a=0:m
    for b=0:m
        for c=0:m
            R(count,:)=[1 0 0].*a+[0 1 0].*b+[0 0 0].*c;
            count=count+1;
        end 
    end
end
%to generate face atoms postion
cnt=1;
for a=0:m-1
    for b=0:m-1
        for c=0:m-1
            R1(cnt,:)=[1 0 0].*a+[0 1 0].*b+[0 0 0].*c;
            cnt=cnt+1;
        end 
    end
end
% in x direction
R1c(:,1)=R1(:,1)+0.5;
R1c(:,2)=R1(:,2)+0.5;
R1c(:,3)=R1(:,3);

% in y direction
R2c(:,1)=R1(:,1)+0.5;
R2c(:,2)=R1(:,2);
R2c(:,3)=R1(:,3);

% in z direction
R3c(:,1)=R1(:,1);
R3c(:,2)=R1(:,2)+0.5;
R3c(:,3)=R1(:,3);
if logical(mod(k,2))
 M=[R;R1c];
 M=unique(M,'rows');
 l1=M(:,1)==m;
 M=M(~l1,:,:);
 l1=M(:,2)==m;
 M=M(~l1,:,:);
else
M=[R2c;R3c];
M=unique(M,'rows');
end
AA=M;
        %------
        Ft= AA +[0 0 j];
        %Jt=dis2d(Ft,d);
        %----------
        %function M=dis2d(A,d)
A=Ft;
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

Dm=C+[U' V' zi];

X=D(:,1);Y=D(:,2);
for i=1:sd(1)
    %U(i)=(b/(2*pi))*(atan(Y(i)/X(i))+(1/(2-2*new))*(X(i)*Y(i))/(X(i)^2+Y(i)^2));
    Vo(i)=(-b/(2*pi))*(((1-2*new)/(4-4*new))*(log(X(i)^2+Y(i)^2))-(1/(2-2*new))*(Y(i)^2)/(X(i)^2+Y(i)^2));
end
Do=D+[zeros(sd(1),1) Vo' zeros(sd(1),1)];
M=[Dm;Do];
Jt=M;
        %----------
    %stacking up layer by layer:
%     id=[1:]
    
    F=[F;Ft];J=[J; Jt];
    j=j+0.5;
    cnt=cnt+1;

end
M=[F-d].*3.693;N=J.*3.693;

%----------------
s=size(M);
natoms=s(1);

q=M;
fi=fopen('data.file_pc','w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');

fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 

fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
p=3.651;%input('\nLattice parameter=');
mass1=63.546;%input('Atomic mass=');
hi=max(q)+1.5*p;
lo=min(q);
xhi=hi(1); yhi=hi(2); zhi=hi(3);
xlo=lo(1); ylo=lo(2); zlo=lo(3);
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',xlo,' ',xhi,' ',' xlo xhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',ylo,' ',yhi,' ',' ylo yhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n\n',' ',zlo,' ',zhi,' ',' zlo zhi');

fprintf(fi,'%s\n\n',' Masses');
fprintf(fi,'%s%.6f\n\n%s\n\n',' 1 ',mass1,' Atoms');

%making array for "Atoms" section for data file

q=[[1:natoms]' ones(natoms,1) q];

for i=1:natoms
    fprintf(fi,'%d\t%c\t%d\t%c\t%.6f\t%c\t%.6f\t%c\t%.6f\n',q(i,1),' ',q(i,2),' ',q(i,3),' ',q(i,4),' ',q(i,5));
end

fprintf('Sucessful!\n');
%----------------------------------
MM=N;
s=size(MM);
natoms=s(1);

q=MM;
fi=fopen('data.file_dc','w');
fprintf(fi,'%s\n\n','#Add comments here LAMMPS description');

fprintf(fi,'%s%d%6s\n','         ',natoms,'  atoms');
ntypeatom=1; 

fprintf(fi,'%s%d%11s\n\n','           ',ntypeatom,'  atom types');
p=3.651;%input('\nLattice parameter=');
mass1=63.546;%input('Atomic mass=');
hi=max(q)+1.5*p;
lo=min(q);
xhi=hi(1); yhi=hi(2); zhi=hi(3);
xlo=lo(1); ylo=lo(2); zlo=lo(3);
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',xlo,' ',xhi,' ',' xlo xhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n',' ',ylo,' ',yhi,' ',' ylo yhi');
fprintf(fi,'%c%.6f%c%.6f%c%8s\n\n',' ',zlo,' ',zhi,' ',' zlo zhi');

fprintf(fi,'%s\n\n',' Masses');
fprintf(fi,'%s%.6f\n\n%s\n\n',' 1 ',mass1,' Atoms');

%making array for "Atoms" section for data file

q=[[1:natoms]' ones(natoms,1) q];

for i=1:natoms
    fprintf(fi,'%d\t%c\t%d\t%c\t%.6f\t%c\t%.6f\t%c\t%.6f\n',q(i,1),' ',q(i,2),' ',q(i,3),' ',q(i,4),' ',q(i,5));
end

fprintf('Sucessful!\n');
%----------------------------------
save
