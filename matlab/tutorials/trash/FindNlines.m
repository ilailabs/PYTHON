function n=FindNlines(filename)
fid=fopen(filename);
count = 0;
while true
  if ~ischar( fgetl(fid) ); break; end
  count = count + 1;
end
fclose(fid);
n=count;
end
