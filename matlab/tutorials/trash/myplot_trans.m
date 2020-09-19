%ploting fourier transform;
plotname='alltrans.jpg';
for h=1:4
%J=TransData(:,:,h);
hold on;
plot(tF(:,h),abs(tY(:,h)))
title('Magnitude')
legend('atom1','atom2','atom3','atom4')
saveas(gcf,plotname);
end

