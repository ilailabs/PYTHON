AtomNo = 400;
Prop_Name = 'Position';
filenamecsv = strcat(Prop_Name,num2str(AtomNo),'.csv');
%Read the data
prop_data=csvread(filenamecsv);
time=prop_data(:,1);
prop=prop_data(:,2);
%Calculate
disp = prop - AtomNo;
[freq, amp]=findfft(time,disp);
amp_s=mysmooth(amp);
%Plot Prop 01 
figure(1)
% pdis=plot(time,disp);
%Plot Prop 02
figure(2)
% plot(freq,amp);
% plot(freq,mysmooth(amp));

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