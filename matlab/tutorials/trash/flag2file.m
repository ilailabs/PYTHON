% reading a file into cell array
function flag2file(f_name,flag,v_name)
fid=fopen(f_name,'r');
nn=num2str(v_name);
rep_times=1;
i=1;
tline = fgetl(fid);
A{i} = tline;replace=rep_times;
while ischar(tline)
    if logical(strfind(A{i},flag)) & replace <=rep_times
       A{i}=strrep(A{i},flag,nn);
       replace=replace+1;
    end
    i=i+1;
    tline=fgetl(fid);
    
    A{i} = tline;
end
fclose(fid);

%making changes until flag%

% writing a file into file from cell array
fid = fopen(f_name,'w');
for i=1:numel(A)
    if A{i+1} == -1
        fprintf(fid,'%s', A{i});
        break
    end
    fprintf(fid,'%s\n',A{i});
end