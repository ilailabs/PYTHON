Wplane = 2;
mat = read_file2mat(17,1616,'ipdata.lmp');
a=3.105;
indMat = [];
% 3-x;4-y;5-z

[delX, lx] = FindRepeatDist(mat(:,3));

logicL = (mat(:,3) > (Wplane-1)*delX) & (mat(:,3) < Wplane*delX);
xy = mat(logicL,:);
scatter(xy(:,3),xy(:,4));hold on;
save('WavePlaneInd.mat')

%sub-fuction1%
function [deltaL, l]=FindRepeatDist(M)
k=unique(M);
l=length(k);
deltaL = range(k)/l;
end

%sub-function2%
function A=read_file2mat(a,b,filename)
%enter a line form, b upto, and filename

fid=fopen(filename);
for i=1:a-2
tline = fgetl(fid);
end
string=fgetl(fid);
temp=[];
q=[];
for i=a:b
        temp=fgetl(fid);
        temp=str2num(temp);
        q=[q;temp];
end
fclose(fid);
%A=str2num(q);
A=q;
end