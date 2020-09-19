%this writes the table in notes.md file automatically reading log file%
experiment_name='myexp1_mon1';
%f_notes='notes.md';
fplot=experiment_name;
xlab='System','Interpreter';
ylab='GB energy $mJ/m^2$';


fplotname=strcat(fplot,'.png');
%copyfile(f_notes,'lammps_log');
cd lammps_log
flist=dir('*.txt');
n=length(flist);
j=1;

% --- first insert emty lines --- %
for i=1:n
    str='| ii | fname | %b% |';
    ins_str(f_notes,str)
end
% --- end ---%

% --- then replace the flag --- %
for i=1:n
a{j}=flist(i).name;
b{j}=strrep(a{j},'_log.txt','');
gbe(j)=flag2var(a{j},'%a%','a');
    flag2file(f_notes,'ii',i);
    flag2file(f_notes,'fname',b{j})
    flag2file(f_notes,'%b%',gbe(j))
j=j+1;
end

str= strcat('The above data is shown in the plot below ![img](files_png/',fplotname,')');
ins_str(f_notes,str)


plot([1:n],gbe,'*');
saveas(gcf,fplot,'png');
xlabel(xlab,'Interpreter','latex','Fontname','TimesNewRoman');
ylabel(ylab,'Interpreter','latex','Fontname','TimesNewRoman');

save(fplot)

%%--------------------------------------------------------------%%
%% --- sub func --- %%

function ins_str(filename,str)
fid=fopen(filename,'a');
    fprintf(fid,'\n%s',str);
fclose(fid);

end
% --- sub func --- %
function a=flag2var(f_name,flag,v_name)
count=0;
fid=fopen(f_name);
tline=fgetl(fid);%read the first line
while ~feof(fid) %loop until end of the file
   matches=strfind(tline,flag);
   run=length(matches);
     if run>0 && matches==1 % checks for the flag %% in tline
     val=strrep(tline,flag,'');
    eval(val); %if yes ecoh is assigned as a varible
     end
   tline=fgetl(fid); % if no it checks for next line
end
  count=count+1;
  %x(count)=1;
  a(count)=eval(v_name);
fclose(fid);
end
% --- sub func --- %%%
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
