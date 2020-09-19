function q=read_logfile
filename='log.txt'; %input('Enter the file name\n');
string='Step PotEng Lx Ly Lz Press Pxx Pyy Pzz c_eatoms ';%input('Enter the begining string\n');
fid=fopen(filename);
tline = fgetl(fid);
lineCounter = 1;
while ischar(tline)
%     disp(tline)
    if strcmp(tline,string)
        q=fscanf(fid,'%f %f %f %f %f %f %f %f %f %f\n',[10 125]);
        q=q';

%         break;
    end
    % Read next line
    tline = fgetl(fid);
    lineCounter = lineCounter + 1;
end
fclose(fid);
