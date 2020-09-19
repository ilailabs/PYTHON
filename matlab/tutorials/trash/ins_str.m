function ins_str(filename,str)
fid=fopen(filename,'a');
    fprintf(fid,'\n%s',str);
fclose(fid);

