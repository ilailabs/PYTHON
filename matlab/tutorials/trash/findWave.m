del_t = 0.0001;

for j=1:27
for i=1:2
    j1=5000;
    j2=j1 + j*1000;
timeframe = [j1, j2];
filename = ['dispPos',num2str(timeframe(i)),'.csv'];
[pos, disp] = readcsv(filename);
iPeak = max(disp);
indPos = find(disp == iPeak);
a(i)=pos(indPos);
end
speed(j) = range(a) / (range(timeframe)*del_t) ;
end


%Sub - functions
function [time, data] = readcsv(filename)

fileID = fopen(filename);

i=1;
while ~feof(fileID)
tline = fgetl(fileID);
newString = split(tline,',');
time_str = newString{1};
time(i,:) = eval(time_str);
var_str = newString{2};
data(i,:) = eval(var_str);
i=i+1;
end
end
