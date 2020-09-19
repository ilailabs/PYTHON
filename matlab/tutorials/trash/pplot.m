%Phonon My plot...reads 'mypdisp.dat'
fname = 'mypdisp.txt'; 
M = read_file2mat(3,nlines(fname),fname);
plot(M(:,1),M(:,5),'*');
hold on;
% a=1;k=1*3;m=1;syms x;xv=-pi/a:2*pi/(100*a):pi/a;
% omega(x)= 2.*sqrt(k/m) * abs(sin(pi*x))
% plot(xv,omega(xv));
%%sub function%%
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

%%file2mat function%%
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
