function [A,B,C]=main(mAngle)
fName='hexPlane.lmp';
A=read_file2mat(14,nlines(fName),fName);
zz=zeros(length(A),1);
A=[A(:,3:4),zz];
A=round(A,2);
B=A;
B(:,2)=-A(:,2)+0;
B=[B(:,1:2),zz];

% Asymmetric
A=A*rotz(0);
B=B*rotz(-mAngle);

% A=A*rotz(mAngle/2);
% B=B*rotz(-mAngle/2);

clrA=[0 0.4470 0.7410];clrB=[0.8500 0.3250 0.0980];clrC=[0.9290 0.6940 0.1250];
clrD=[0.4940 0.1840 0.5560];

C=intersect(round(A,1),round(B,1),'rows');
% h=scatPlot(A,clrA);
% hold on;
% h=scatPlot(B,clrB);
% h=scatPlot(C,clrC);
% hold off;
% daspect([1 1 1]);

%to find sigma
% hex_lp=1.7678;
% csl_lp=findLattice(C);
% area_ratio=(eArea(csl_lp)/eArea(hex_lp));
% csl=round(area_ratio);
end
%----------------sub-func-----------------%
function l=findLattice(M)
M=M(:,2);
A=unique(sortrows(M));
l=A(2)-A(1);
end

function n=nlines(filename)
fid=fopen(filename);
count = 0;
while true
  if ~ischar( fgetl(fid) ); break; end
  count = count + 1;
end
fclose(fid);
n=count;
end

function A=eArea(a)
A=sqrt(3)*0.25*a*a;
end
