refplt='im1.png';
myplt='im2.png';

A=imread(refplt);
s=size(A);
B=imread(myplt);
p=size(B);
%magnifying to the aspect ratio of A
C=imresize(B,s(1:2));
%superimposing two fig
D=imfuse(A,C,'blend','Scaling','joint');
imshow(D)
imwrite(D,'superimposedplot.png');
