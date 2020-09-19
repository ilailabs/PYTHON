%ploting the dis data;
plotname='alldis.jpg';
for h=1:k
I=DisData(:,:,h);
hold on;
plot(I(1,:),I(2,:))
title('Magnitude')
legend('atom1','atom2','atom3','atom4')
saveas(gcf,plotname);
end