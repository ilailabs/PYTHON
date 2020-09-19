function genlatt_classexercise()
clc;
clear all;
%%Assignment and modify for more complicated examples. 
% to generate a simple cubic lattice
nx=[0:1:2];% integers 
ny=[0:1:2];% integers
nz=[0:1:2];% integers
% appropriate lattice parameters
%=================================
a= 1.34657485;
b= 1.34657485;
c= 1.34657485;
beta= 0;
%=======================
%appropriate cell vectors
V=[a 0 0; 0 b 0; 0 0 c ]; % the three lattice vectors. This can be changed to suit the lattice you are trying to create
%-----------------------------------------
atom=1;
basis=getbasis_0(); % Basis atoms. Give addidional ones as rows. or have them returned to the variable basis from another function or subroutine. 
[nb,COL]=size(basis) % nb contains the number of basis atoms. This will depend on the space group and the Wykckoff position.
for k=1:length(nx)
    for l=1:length(ny)
        for m=1:length(nz)
            for b=1:nb
            H=V(1,:)*nx(k)+V(2,:)*ny(l)+V(3,:)*nz(m)+basis(b,1)*V(1,:)+basis(b,2)*V(2,:)+basis(b,3)*V(3,:);
           
            X=H(1);
            Y=H(2);
            Z=H(3);
%==========================================================================================
% This part of the code will ensure that only atoms within the unit cell are stored
%==========================================================================================
            w=cross(V(1,:),V(2,:));
            u=cross(V(2,:),V(3,:));
            v=cross(V(3,:),V(1,:));
            
            w=w/sqrt(w*w');
            v=v/sqrt(v*v');
            u=u/sqrt(u*u');
            
            C=[X Y Z];
            
            dx=dot(C,u);
            dy=dot(C,v);
            dz=dot(C,w);
            
            if(dx <dot(u,V(1,:)) && dy <1*dot(v,V(2,:)) && dz <1*dot(w,V(3,:)))
                X1(atom)=X;
                Y1(atom)=Y;
                Z1(atom)=Z;
                
 % Add as many of these statements (depending on the number of atom types) to color
 %or mark them with different sizes on the scatter3 command in the 103rd
 %line
                if(floor(basis(b,4))==1)
                T1(atom)=200; % Sizes of the atoms
                TPE(atom)=1;
                C1(atom,1:3)=[1 0 0]; % Colors of the atoms
                end
                
                if(floor(basis(b,4))==2)
                T1(atom)=300;
                TPE(atom)=2;
                C1(atom,1:3)=[1 0 1];
                end
            
                
                if(floor(basis(b,4))==3)
                T1(atom)=400;
                 TPE(atom)=3;
                C1(atom,1:3)=[1 1 0];
                end
                if(floor(basis(b,4))==4)
                    T1(atom)=500;
                   TPE(atom)=4;
                    C1(atom,1:3)=[1 0.5 2];
                end
                atom=atom+1;
            end
            end
         end
    end
end
%These section of the code, draws the unit cell.
[X1; Y1 ;Z1]';
size(X1)
V0=[0 0 0];
V1=V(1,:);
V3=V(2,:);
V2=V1+V3;
V4=V(3,:);
V5=V1+V4;
V6=V3+V4+V1;
V7=V3+V4;
Vec=[V0;V1;V2;V3;V4;V5;V6;V7]
line(Vec(1:4,1),Vec(1:4,2),Vec(1:4,3),'LineWidth',4);
hold on;
line(Vec(5:8,1),Vec(5:8,2),Vec(5:8,3),'LineWidth',4);
hold on;
line(Vec([1,2,6,5],1),Vec([1,2,6,5],2),Vec([1,2,6,5],3),'LineWidth',4);
hold on;
line(Vec([2,3,7,6],1),Vec([2,3,7,6],2),Vec([2,3,7,6],3),'LineWidth',4);
hold on;
line(Vec([1,4,8,5,1],1),Vec([1,4,8,5,1],2),Vec([1,4,8,5,1],3),'LineWidth',4);
%============================================================================

scatter3(X1,Y1,Z1,T1,C1,'filled','o');
writexyzformat(X1,Y1,Z1,TPE);
%<write the coordinates in a specific format. This function writes it in xyz format which VMD can read.
% There are several such formats possible.
end
