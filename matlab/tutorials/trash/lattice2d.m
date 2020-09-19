%script for generating 2d square lattice
function H = lattice2d(n1,n2)
n3=[0:0];
a=[1 0 0];b=[cosd(60), sind(60), 0];c=[0 0 0];
atom=1;
for k=1:length(n1)
    for l=1:length(n2)
        for m=1:length(n3)
            H(atom,1)=a(1)*n1(k)+b(1)*n2(l)+c(1)*n3(m);
            H(atom,2)=a(2)*n1(k)+b(2)*n2(l)+c(2)*n3(m);
            H(atom,3)=a(3)*n1(k)+b(3)*n2(l)+c(3)*n3(m);
%             X(atom)=H(1);
%             Y(atom)=H(2);
%             Z(atom)=H(3);
            atom=atom+1;
        end
    end
end