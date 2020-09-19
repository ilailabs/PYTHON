n=3000;
a_fname=['wo_pGrp/disp',num2str(n),'.csv'];
A_fname=['w_pGrp/disp',num2str(n),'.csv'];

a=readCsv(a_fname);
A=readCsv(A_fname);

x=a(:,1);
Y=A(:,2)-a(:,2);

plot(x,Y);hold on;
clear
