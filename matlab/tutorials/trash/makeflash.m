%this writes the table in notes.md file automatically reading log file%
system('bash rename.sh')
copyfile('src.tex','master.tex')
f_notes='master.tex';

%copyfile(f_notes,'lammps_log');
%cd lammps_log
py_list=dir('*.py');
m_list=dir('*.m');
n=length(py_list);
m=length(m_list);

% --- first insert emty lines --- %
for i=1:n
    str1='\lstinputlisting[language=Python, caption=%caption%]{%filename%}';
    ins_str(f_notes,str1)
    str_caption=strrep(py_list(i).name,'_','-');
    flag2file(f_notes,'%caption%',str_caption)
    flag2file(f_notes,'%filename%',py_list(i).name)
    %ins_str(f_notes,'\clearpage')
end
for i=1:m
    str1='\lstinputlisting[language=Octave, caption=%filename%]{%filename%}';
    ins_str(f_notes,str1)
    flag2file(f_notes,'%filename%',m_list(i).name)
    %ins_str(f_notes,'\clearpage')
end
% --- end ---%
ins_str(f_notes,'\n')
ins_str(f_notes,'\lstlistoflistings')
ins_str(f_notes,'\n')
ins_str(f_notes,'\end{document}')

%%--------------------------------------------------------------%%
%% --- sub func --- %%

function ins_str(filename,str)
fid=fopen(filename,'a');
    fprintf(fid,'\n%s',str);
fclose(fid);

end
% --- sub func --- %

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

% writing a file into file from cell array
fid = fopen(f_name,'w');
for i=1:numel(A)
    if A{i+1} == -1
        fprintf(fid,'%s', A{i});
        break
    end
    fprintf(fid,'%s\n',A{i});
end
end
