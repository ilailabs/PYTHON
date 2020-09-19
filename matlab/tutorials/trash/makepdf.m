% '''this script gets the name of the file names in that folder'''

%flist=dir('*.txt');
flist=dir('*.png');
n=length(flist);
j=1;
for i=1:n
a{j}=flist(i).name;
j=j+1;
end

edit ilai.md
f_notes='ilai.md';
for i=1:n
    str=strcat('![]','(',a{1,i},')');
    ins_str(f_notes,str)
end
% % --- end ---%
% % 
% % % --- then replace the flag --- %
% for i=1:n
% a{j}=flist(i).name;
%     flag2file(f_notes,'%b',a{j});
% j=j+1;
% end

function ins_str(filename,str)
fid=fopen(filename,'a');
    fprintf(fid,'\n%s',str);
fclose(fid);

end
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