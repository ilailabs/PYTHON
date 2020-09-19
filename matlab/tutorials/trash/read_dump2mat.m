function A=read_dump2mat(filename)
%enter a line form, b upto, and filename
a=10;%filename='dumpcord.0';

fid=fopen(filename);
for i=1:4
    natoms = fgetl(fid);
end
for i=4:a-2
    tline = fgetl(fid);
end
n= str2num(natoms);
b=n+a;
temp=[];
q=[];
for i=a:b-1
        temp=fgetl(fid);
        temp=str2num(temp);
        q=[q;temp];
end
fclose(fid);
A=q;
