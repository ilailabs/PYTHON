% Plots Temp Prss graph and calculatest the dispersion
mytitle='NVE_5';
M=D;
T_mean=mean(M(:,2));
T_range=range(M(:,2));
T_std=std(M(:,2));

P_mean=mean(M(:,3));
P_range=range(M(:,3));
P_std=std(M(:,3));

plot(M(:,1),M(:,2))
title(mytitle);
xlabel('Timestep'),ylabel('Temp');
savefig('Temp');

plot(M(:,1),M(:,3))
title(mytitle);
xlabel('Timestep'),ylabel('Press');
savefig('Press');
