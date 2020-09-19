%PropName = 'c_eng';
ParticleID = 1;
lmp_dt = 0.01;

filename = [PropName,num2str(ParticleID),'.csv'];
[time, data]=readcsv(filename);
%plot(time*lmp_dt,data)
ylabel(PropName(3:end))