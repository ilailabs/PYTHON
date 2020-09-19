function f=checkFFT(D)
time=D(:,1);
disp=D(:,2);
% nn=1;
%NOTE: freq*10 should be done for correction bcoz dumped every 100 not 1000
%NOTE: gives freq in f=1/T Hz; to get freq in rad/s 2*pi*f;
%NOTE if metal units is given f is in THz;
lmp_ts = 0.001;
dump_freq = 1;
sampf=lmp_ts*dump_freq;
% filenamecsv = [num2str(nn),'.csv'];

% [time, disp]=readcsv(filenamecsv);


[freq, amp]=findfft(time,disp,sampf);
freq = freq*sampf;
amp_s=mysmooth(amp);
plot(freq,amp);
% xlim([-0.25, 0.25]);
% ylim([0, 2e-3]);
% plot(freq,mysmooth(amp));
plot(freq,amp);
% ind = find(amp == max(amp));
ind = amp > 50;
f=freq(ind);
% [x,~]=getpts
end
%##Functions
function [freq, amp]=findfft(t,d,sampf)
L=t(end);
%dt=t(2)-t(1);%corresp to dump every N
dt = sampf;
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
