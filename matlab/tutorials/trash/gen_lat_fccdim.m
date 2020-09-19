%script for generating face diamond cubic structure
n1=[-5:5];n2=[-5:5];n3=[-5:5]; %intergers
a=[1 0 0];b=[0 1 0];c=[0 0 1];V=[a;b;c]; %vectors
basis=[0 0 0;0.25 0.25 0.25;0.5 0.5 0;0 0.5 0.5;0.5 0 0.5];
[nb, COL]=size(basis);
atom=1;
for k=1:length(n1)
    for l=1:length(n2)
        for m=1:length(n3)
            for b=1:nb
            H=V(1,:)*n1(k)+V(2,:)*n2(l)+V(3,:)*n3(m)...
                +basis(b,1)*V(1,:)  +basis(b,2)*V(2,:)+basis(b,3)*V(3,:);            
            X(atom)=H(1);
            Y(atom)=H(2);
            Z(atom)=H(3);
            atom=atom+1;
            end
        end
    end
end
plot3(X,Y,Z,'o','MarkerFaceColor','r','MarkerSize',10);