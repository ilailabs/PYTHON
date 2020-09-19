function tem = tempAllData(f)
n=398
a = 2+n*1120
b = a-2+1120
C = read_file2mat(a,b,'Tempcgunk.txt');
lz = C(:,2);
K_b = 8.617333262145e-5; %eV per K
tem = C(:,4);%/(1.5*K_b);
size(tem)
ylim([400,600]);
% hold on;
plot(lz,tem);
% end