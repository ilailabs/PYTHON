del_t = 0.001;
for i=1:2
timeframe = [3800, 7800];
filename = ['disp',num2str(timeframe(i)),'.csv'];
[pos, disp] = readCsv(filename);
iPeak = max(disp);
indPos = find(disp == iPeak);
a(i)=pos(indPos);
end
l=range(a);
det=range(timeframe);

t=det*del_t;
speed=l/t


%Sub - functions
function [time, data] = readCsv(filename)

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