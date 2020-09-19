figure(4)
nLines=20811;
% nLines=2001002;
nStart=nLines-577+1;
MM=read_file2mat(nStart,nLines,'lout.Temp');
tZ=MM(:,4)*7.7364e+03/1.5;
mtZ=mean(tZ)
lz=MM(:,2);
tZMat=mtZ*ones(length(tZ),1);
plot(lz,tZ,'-');hold on;
% ylim([0, 0.1]);
