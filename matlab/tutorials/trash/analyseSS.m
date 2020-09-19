% Analyze def1.txt files

d=dir('*.def1.txt');
for i=1:length(d)
fname=d.name;
A=importdata(fname);
strain=A.data(:,1);
stress=A.data(:,2:4);
plot(strain,stress(:,1),'or','LineWidth',2,'MarkerEdgeColor','r','MarkerfaceColor'...
    ,'r','MarkerSize',2);hold on;
plot(strain,stress(:,2),'ob','LineWidth',2,'MarkerEdgeColor','b','MarkerfaceColor'...
    ,'b','MarkerSize',2);hold on;
plot(strain,stress(:,3),'og','LineWidth',2,'MarkerEdgeColor','g','MarkerfaceColor'...
    ,'g','MarkerSize',2);hold on;
axis square
ylim([0 10]);
xlabel('Strain','FontSize',12,'FontName','Times','FontWeight','bold');
ylabel('Stress(GPa)','FontSize',12,'FontName','Times','FontWeight','bold');
saveas(gca,strrep(fname,'.def1.txt','.jpg'));
close(1);
end
