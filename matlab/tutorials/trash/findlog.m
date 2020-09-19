function a=findlog(f_name,flag,v_name)
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
fclose(fid)