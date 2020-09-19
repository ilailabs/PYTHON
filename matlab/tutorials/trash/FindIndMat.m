filename = 'supercell.lmp';
Wplane = 2;

line1=16;
lineEnd = FindNlines(filename) ;
mat = read_file2mat(line1,lineEnd, filename);
a=4.02;
indMat = [];

[delX, lx] = FindRepeatDist(mat(:,3));
toleL = delX*0.5;
limL0 = -toleL+Wplane*delX;
limLM = +toleL+Wplane*delX;

logicL = (mat(:,3) > limL0) & (mat(:,3) < limLM);
xy = mat(logicL,:);
scatter(xy(:,4),xy(:,5));hold on;
[delY,ly] = FindRepeatDist(xy(:,4));
tole = delY*0.5;

for i=0:ly
lim0 = -tole+i*delY;
limM = +tole+i*delY;

logic0 = (xy(:,4) < limM) & (xy(:,4) > lim0);
L1 = xy(logic0,:);
C = L1(:,1);
indMat = [indMat, C];
scatter(L1(:,4),L1(:,5));
end

clearvars -except Wplane indMat
save('WavePlane.mat')

%sub-fuction1%
function [deltaL, l]=FindRepeatDist(M)
k=unique(M);
l=length(k);
deltaL = range(k)/l;
end

%sub-function2%;
function n=FindNlines(filename)
fid=fopen(filename);
count = 0;
while true
  if ~ischar( fgetl(fid) ); break; end
  count = count + 1;
end
fclose(fid);
n=count;
end

%sub-function3%;
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


