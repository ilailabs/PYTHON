%step temp press etotal pe ke density
A=read_file2mat(nve1(1),nve1(2),'log.lammps');
step1=A(:,1);
temp1=A(:,2);
press1=A(:,3);
etotal1=A(:,4);
pe1=A(:,5);
ke1=A(:,6);
density1=A(:,7);

B=read_file2mat(nvt2(1),nvt2(2),'log.lammps');
step2=B(:,1);
temp2=B(:,2);
press2=B(:,3);
etotal2=B(:,4);
pe2=B(:,5);
ke2=B(:,6);
density2=B(:,7);

C=read_file2mat(npt3(1),npt3(2),'log.lammps');
step3=C(:,1);
temp3=C(:,2);
press3=C(:,3);
etotal3=C(:,4);
pe3=C(:,5);
ke3=C(:,6);
density3=C(:,7);

D=read_file2mat(nve4(1),nve4(2),'log.lammps');
step4=D(:,1);
temp4=D(:,2);
press4=D(:,3);
etotal4=D(:,4);
pe4=D(:,5);
ke4=D(:,6);
density4=D(:,7);


