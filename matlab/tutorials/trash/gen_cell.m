function [cell_all,lp]= gen_cell()
clear all;
% gen only one cell
nx=[0:1:1];
ny=[0:1:1];
nz=[0:1:1];
%===========================================
getbasis 
lp=[a,b,c];%to get cell parameters and basis
%===========================================
%appropriate cell vectors
V=[a 0 0; 0 b 0; 0 0 c ]; % the three lattice vectors. This can be changed to suit the lattice you are trying to create
%-----------------------------------------
atom=1;
[nb,~]=size(basis); % nb contains the number of basis atoms. This will depend on the space group and the Wykckoff position.
for k=1:length(nx)
    for l=1:length(ny)
        for m=1:length(nz)
            for b=1:nb
            H=V(1,:)*nx(k)+V(2,:)*ny(l)+V(3,:)*nz(m)+basis(b,1)*V(1,:)+basis(b,2)*V(2,:)+basis(b,3)*V(3,:);
           
            X=H(1);
            Y=H(2);
            Z=H(3);
            %------
            w=cross(V(1,:),V(2,:));
            u=cross(V(2,:),V(3,:));
            v=cross(V(3,:),V(1,:));
            
            lu=sqrt(u*u');
            lv=sqrt(v*v');
            lw=sqrt(w*w');
            cp=[lu,lv,lw];
            w=w/lw;
            v=v/lv;
            u=u/lu;
            
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
                TPE(atom)=1;
                end
                
                if(floor(basis(b,4))==2)
                TPE(atom)=2;
                end
            
                if(floor(basis(b,4))==3)
                 TPE(atom)=3;
                end
                
                if(floor(basis(b,4))==4)
                   TPE(atom)=4;
                end
                
                atom=atom+1;
            end
            %------
            end
        end
    end
end
cell_c=[X1',Y1',Z1'];
type=TPE';
cell_all=[cell_c,type];