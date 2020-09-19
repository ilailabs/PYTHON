filenamecsv = '4999.csv';

[time, pos]=readcsv(filenamecsv);
disp=pos(:,1);

[freq, amp]=findfft(time,disp);
amp_s=mysmooth(amp);
%Plot Prop 01 
% figure(1)
% pdis=plot(time,disp);
%Plot Prop 02
% figure(2)
plot(freq,amp);
% plot(freq,mysmooth(amp));

ind = find(amp == max(amp));
freq(ind)

%##Functions
function [freq, amp]=findfft(t,d)
L=t(end);
dt=t(2)-t(1);%corresp to dump every N
f_max=1/(2*dt);

op_fft=fft(d);
freq= -f_max:(2*f_max)/(length(t)-1):f_max;
amp_cplx = fftshift(op_fft);
amp = abs(amp_cplx);
end

function after_smoothing=mysmooth(ampli)
temp = ampli;
for i=1:100
temp=movmean(temp,3);
end
after_smoothing=temp;
end

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
