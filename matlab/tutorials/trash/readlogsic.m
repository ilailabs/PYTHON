% '''this script gets the name of the file names in that folder'''

% GetFileList.m %%
%flist=dir('*.txt');
flist=dir('*.txt');
n=length(flist);
j=1;
for i=1:n
a{j}=flist(i).name;

gbe(j) = flag2var(a{j},'%a%','a');
x(j)=i;

j=j+1;
end
% of reading file list %


% j=1;
% for i=0:10
%     name = strcat('mindata_r',num2str(i),'_log.txt');
%     gbe(j) = flag2var(name,'%a%','a');
%     x(j)=i;
%     j=j+1;
% end

%ts=1000000:5000:1200000
%plot(x,gbe)


%%%---sub functions---%%%
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
%%% --- end of sub func --- %%%

     
