%read read log file a particular line alone, extract variable experssion
%alone
count=0;
fid=fopen('log.lammps');
tline=fgetl(fid);%read the first line
while ~feof(fid) %loop until end of the file
  matches=strfind(tline,'%%');
  run=length(matches);
  if run>0 && matches==1 % checks for the flag %% in tline
  val=strrep(tline,'%%','');
  eval(val); %if yes ecoh is assigned as a varible
  end
  tline=fgetl(fid); % if no it checks for next line
  end
  count=count+1;
  x(count)=1;Y(count)=ecoh;
fclose(fid)