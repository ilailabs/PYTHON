function A=read_log2mat(a,b,filename)
%filename='log.txt'; %input('Enter the file name\n');
%string='Step PotEng Lx Ly Lz Press Pxx Pyy Pzz c_eatoms ';%input('Enter the begining string\n');
fid=fopen(filename);
for i=1:a-2
tline = fgetl(fid);
end
string=fgetl(fid);
temp=[];
q=[];
for i=a:b
        temp=fgetl(fid);
        temp = str2num(temp);
        q=[q;temp];
end
fclose(fid);
A=(q);