function q=read
filename='log.txt'; %input('Enter the file name\n');
string='Step PotEng Lx Ly Lz Press Pxx Pyy Pzz c_eatoms ';%input('Enter the begining string\n');
fid=fopen(filename);
tline = fgetl(fid);
while ischar(tline)
    if strcmp(tline,string)
        q=fscanf(fid,'%f %f %f %f %f %f %f %f %f %f\n',[10,1e10]);
        q=q';
    end
    tline = fgetl(fid);
end
fclose(fid);