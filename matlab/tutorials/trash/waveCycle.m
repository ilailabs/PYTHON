% nCycles = 100;
% T=1.0;
% 
% mean=T*nCycles/2;
% sigma = 10;

T = 1.0; % time for one cycle
ncycles = 100;

pulse_duration = T * ncycles;

deltat = 0.01;
t = [0.0:deltat:pulse_duration];
X = sin(2*pi*1/T*t);
plot(t,X);

% Nsteps = pulse_duration./deltat;
G = gaussmf(t,[2*50, pulse_duration/2]);
hold on;
plot(t,G)
