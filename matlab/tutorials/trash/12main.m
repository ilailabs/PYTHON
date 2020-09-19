for i=30:30
fname=['hexPlane',num2str(i),'.lmp'];
A=read_file2mat(14,nlines(fname),fname);
A=A(:,3:4);
lx=4.899;ly=2.8284;
xn=fix(3500*3/lx);
yn=fix(54/ly);
B=hexlattice(xn,yn);
xbr=range(B(:,1));
 
tol=1.5;

B(:,1)=B(:,1)-xbr-(tol);
 
C=[A;B];
C=[C,zeros(length(C),1)];

xlo=min(C(:,1))-lx*0.5;xhi=max(C(:,1))+lx*0.5;
ylo=min(C(:,2))-ly*0.5;yhi=max(C(:,2))+ly*0.5;

write_lmpdatafile_m(i,C,[xlo,xhi],[ylo,yhi]);
end
