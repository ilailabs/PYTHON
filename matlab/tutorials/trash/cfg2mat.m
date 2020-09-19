function mat=cfg2mat(filename)
fid=fopen(filename);
for i=1:1
    natoms = fgetl(fid);
end
b=str2num(natoms(22:end));
% read the next few empty lines
for i=2:17
    natoms = fgetl(fid);
end
string=fgetl(fid);
temp=[];
q=[];

for i=1:b
        temp=fgetl(fid);
        temp=str2num(temp);
        q=[q;temp];
end
fclose(fid);
mat=q;
