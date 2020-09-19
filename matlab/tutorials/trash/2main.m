% ctr=1;
for sigma=100:1:200
% sigma=20;
system(['lmp_daily -var sigma ',num2str(sigma),' -in gpulse.lammps'])
temp1=read_file2mat(159,1087,'log.lammps');
pe1=temp1(:,2);
ke1=temp1(:,3);
te1=pe1+ke1;
dpe1=pe1(end)-pe1(1);dke1=ke1(end)-ke1(1);
dte1=te1(end)-te1(1);
% plot(temp1(:,1),pe1,'.');hold on;
% figure(ctr);
plot(temp1(:,1),te1,'.');hold on;

% data(ctr,:)=[sigma, dte1];
% ctr=ctr+1;
end
%-------------------------------------%

% temp2=read_file2mat(1123,2124,'log.lammps');
% pe2=temp2(:,2);
% ke2=temp2(:,3);
% te2=pe2+ke2;
% dpe2=pe2(end)-pe2(1);dke2=ke2(end)-ke2(1);
% dte2=te2(end)-te2(1);
% % plot(temp1(:,1),pe1,'.');hold on;
% plot(temp2(:,1),te2,'.');
