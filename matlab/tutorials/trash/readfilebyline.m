>> % open the file
>> fid=fopen('R2CameraDetectionParam.txt'); 
>> % set linenum to the desired line number that you want to import
>> linenum = 3;
>> % use '%s' if you want to read in the entire line or use '%f' if you want to read only the first numeric value
>> C = textscan(fid,'%s',1,'delimiter','\n', 'headerlines',linenum-1);
