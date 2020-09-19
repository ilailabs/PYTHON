function A=readline(a,b,filename)
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
A=q;
end
