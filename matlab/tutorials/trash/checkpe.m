
for i=1:10
fname=[num2str(i),'_logfile.txt'];
P=read_file2mat(91,1836,fname);
M=read_file2mat(1873,2874,fname);
figure(i)
ylim([-2.688e5, -2.687992e5])
plot(P(:,1),P(:,2)+P(:,3),'.');hold on;
plot(M(:,1),M(:,2)+M(:,3),'.');
saveas(gcf,[num2str(i),'TE-vs-N.png'])
end
