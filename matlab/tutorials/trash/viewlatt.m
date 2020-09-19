function viewlatt(cell)
X1=cell(:,1)';
Y1=cell(:,2)';
Z1=cell(:,3)';
tpe=cell(:,4);
cnt=length(tpe);
atom=1;
for i=1:cnt
                if(tpe(i)==1)
                T1(atom)=200; % Sizes of the atoms
                C1(atom,1:3)=[1 0 0]; % Colors of the atoms
                end
                
                if(tpe(i)==2)
                T1(atom)=300;
                C1(atom,1:3)=[1 0 1];
                end
            
                
                if(tpe(i)==3)
                T1(atom)=400;
                C1(atom,1:3)=[1 1 0];
                end
                
                if(tpe(i)==4)
                    T1(atom)=500;
                    C1(atom,1:3)=[1 0.5 2];
                end
    atom=atom+1;
end
scatter3(X1,Y1,Z1,T1,C1,'filled','o');hold on;