%% System Definition %%
nA=10000;
a=4.05;
m=26.98;

a0_A=a;
mA=m;

nB=nA;
a0_B=1.0*a;
mB=1.0*m;

spacing=1.00*a;
% %ljDatafile([nAtomsA, nAtomsB],[a0_A, a0_B], Bspacing,[massA, massB])
   lj2Datafile([nA, nB],[a0_A, a0_B]  , spacing     ,[mA, mB])

%% Force Field Definition %%
% k1=1*3.0;
% 
% r1=a0_A;
% k2=1.2*k1; r2=a0_B;
% k12=1.2*k1;r12=spacing;
% 
% 
% %----------------------------------%
% s1=r1/(2^(1/6));
% e1=s1^2*k1/(36/((2^(2/3))));
% 
% s2=r2/(2^(1/6));
% e2=s2^2*k2/(36/((2^(2/3))));
% 
% s12=r12/(2^(1/6));
% e12=s12^2*k12/(36/((2^(2/3))));
% %---------------------------------%
% syms r e s
% rv=0.9:0.01:1.5
% E_lj(r,e,s) = 4*e*((s/r)^12 - (s/r)^6);
% figure(1)
% plot(rv,E_lj(rv,e1,s1),'b-');hold on;
% plot(rv,E_lj(rv,e12,s12),'g--');
% plot(rv,E_lj(rv,e2,s2),'k-');
% legend('1-1','1-2','2-2');
% saveas(gcf,'potential.png')
% 
% 
% 
% 
% %% Lammps Simulation %% 
% cmd=['lmp_daily ',...
%     ' -var e1 ', num2str(e1),    ' -var s1 ',num2str(s1),...
%     ' -var e2 ', num2str(e2),    ' -var s2 ',num2str(s2),...
%     ' -var e12 ', num2str(e12),    ' -var s12 ',num2str(s12),...
%     ' -in g2pulse.lammps'];
cmd = 'lmp_daily -in nve.lammps';
% system(cmd)