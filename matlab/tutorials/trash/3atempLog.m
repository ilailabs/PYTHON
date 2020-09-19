% A = read_file2mat(1082,201082,'log.lammps');
dt = 1e-3; %ps
% ts = A(:,1);
% sim_time = ts*dt;
% plot(sim_time,A(:,2)) %temp plot
plot(A(:,2),A(:,8)); %ke plot

