A=read_file2mat(101,276,'log.lammps');
pe=A(:,2);ke=A(:,3);ns=A(:,1);
plot(ns,ke+pe,'.')

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