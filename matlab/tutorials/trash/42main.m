% for f=1:19
%     tt = tempAllData(f);
% D(:,f) = tt;
% end

% function tem = tempAllData(f)
f = 19;
a = 4 + 719*f;
b = 722 + 719*f;
aa = a+1;
C = read_file2mat(aa,b,'Tempcgunk.txt');
lz = C(:,2);
% K_b = 8.617333262145e-5; %eV per K
tem = C(:,4);%/(1.5*K_b);
% ylim([400,600]);
% hold on;
plot(lz,tem);
% end