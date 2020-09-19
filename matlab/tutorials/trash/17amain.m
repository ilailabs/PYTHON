% natoms=10;
% mass1=1;
% latticeP=1;
% bond1coeff=[1.5, 1];
% A=0.0001;
% r0=1;
% di=A/100;
% ctr=1;
% %for i=(r0-A):di:(r0+A)
% for i=0.85:0.01:3.25
% lp(ctr)=i;
% harmonic1d(natoms,i,mass1,bond1coeff);
% system('lmp_daily -in simpleNve.lammps');
% temp1=read_file2mat(77,77,'log.lammps');
% pe1=temp1(2);ke1=temp1(3);
% E1(ctr)=pe1;
% 
% ljDatafile(natoms,i)
% system('lmp_daily -in simpleNve_lj.lammps');
% temp2=read_file2mat(77,77,'log.lammps');
% pe2=temp2(2);ke2=temp2(3);
% E2(ctr)=pe2;
% 
% ctr=ctr+1;
% end
% plot(lp,E1,'.');hold on;grid on;
% plot(lp,E2,'.');

% syms r
% k=3.0;
% e=(k*(2^2/3)*(s^2))/36;s=1/(2^(1/6));
% ehm(r)=(0.5*k*(r - 1)^2);
% elj(r)=4*e*((s/r)^12-(s/r)^6);
 