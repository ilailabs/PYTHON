%lmp_ts = 0.01;
fname = 'log.lammps';
matP = read_file2mat(105, 1033, fname);
matS = read_file2mat(1074, 2075 , fname);

% c=2;%plot for pe
% plot(matP(:,1),matP(:,c));
% hold on;
% plot(matS(:,1),matS(:,c));
% 
% figure()
% c=3;%plot for ke
% plot(matP(:,1),matP(:,c));
% hold on;
% plot(matS(:,1),matS(:,c));

%energy calc
mat=[matP;matS];
pe=matS(end,2);ke=matS(end,3);te=pe+ke;


%draw pluse
T=9.274;

A=0.01;
mean = 600;
sigma = 30;
omega = 2*pi/T;
syms t;
tvar = 0:1000;
u(t)=A*exp(-(t-mean)*(t-mean)/2/sigma/sigma)*sin(omega*t);
hold off;
figure
plot(tvar, u(tvar));pe

%sub-funct%
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