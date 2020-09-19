function write_xyzfile(xy,atom,filename)
c0=size(xy);
c=c0(1);
filename=sprintf(filename);
fid=fopen(filename,'w+t');
fprintf(fid, '%d\n',c);
fprintf(fid, 'coordinates of %s atoms\n', atom);
for ii=1:c
    fprintf(fid,'%s\t',atom);
    fprintf(fid, '%.2f\t %.2f\t %.2f\t \n',xy(ii,:));
end
fclose(fid);
fprintf('File generated succesfully\n');
