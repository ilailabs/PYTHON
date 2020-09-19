mkdir('fftPlot');

for lay=0:39
    folName = ['col',num2str(lay)];
    cd(folName);
ctr = 1;
a = 0 + 40*lay; b = 39 + 40*lay;
for i=a:b
filename = [num2str(i),'.csv'];
data = csvread(filename);
t = data(:,1);
disp = data(:,2);
frequency{ctr}=funcfft(t,disp);
time(:,ctr) = t;
displacemet_x(:,ctr) = disp;
ctr = ctr + 1;
hold on;
end
fvar = frequency{10};
fpresent = unique(abs(fvar));
plotfilename = ['fft_L', num2str(lay),'.jpg'];
set(gcf, 'PaperUnits', 'inches');
x_width=10 ;y_width=8;
set(gcf, 'PaperPosition', [0 0 x_width y_width]); %
%text-annotation%
dim = [.15 .7 .1 .3];
str = ['C=',num2str(lay),'; ','freq=',num2str(fpresent)];
annotation('textbox',dim,'String',str,'FitBoxToText','on');
%saveas(gcf,'fig1.pdf')
saveas(gcf,plotfilename); 
close(gcf);
copyfile(plotfilename,'../fftPlot');
    cd('..');
end

%%sub-function%%
function allf=funcfft(t,y)
L=t(end);
dt=t(2)-t(1);
f=y;
f_max=1/(2*dt);
f_min=1/(2*L*dt);
% indf = f_min:(f_max-f_min)/(length(f)-1):f_max;
op_fft=fft(f);
% plot(indf,abs(op_fft));
freq= -f_max:(2*f_max)/(length(f)-1):f_max;
amp_cplx = fftshift(op_fft);
amp = abs(amp_cplx);
hold on;
ylim([0 2]);
plot(freq,amp)
%finding freq corres to the peaks
log=(amp)>0.05;
allf=freq(log);
end
