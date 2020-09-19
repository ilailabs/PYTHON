syms dte1 A
ctr=1;
i=7;
    A=1/10^i;
    system(['lmp_daily -var A ',num2str(A),' -in gpulse.lammps'])
temp1=read_file2mat(159,1087,'log.lammps');
pe1=temp1(:,2);
ke1=temp1(:,3);
te1=pe1+ke1;
dpe1=pe1(end)-pe1(1);dke1=ke1(end)-ke1(1);
dte1=te1(end)-te1(1);
% plot(temp1(:,1),pe1,'.');hold on;
% plot(temp1(:,1),te1,'.');

hold on;
%-------------------------------------%

temp2=read_file2mat(1123,2124,'log.lammps');
pe2=temp2(:,2);
ke2=temp2(:,3);
te2=pe2+ke2;
dpe2=pe2(end)-pe2(1);dke2=ke2(end)-ke2(1);
dte2=te2(end)-te2(1);
% plot(temp1(:,1),pe1,'.');hold on;
% plot(temp2(:,1),te2,'.');

data(ctr,:)=[A, dte1];ctr=ctr+1;


plot(data(end:-1:1,1),data(end:-1:1,2),'-')
