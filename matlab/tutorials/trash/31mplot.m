% c=118;c=1937;
% A=read_file2mat(118,300,'logfile.txt');
% %temp-profile
% figure(1)
% plot(A(:,1),A(:,2));hold on;
% 
% figure(2)
% te=A(:,3);
% mte=mean(A(:,3));
% mteMat=mte*ones(length(te),1);
% plot(A(:,1),te);hold on;
% plot(A(:,1),mteMat);

figure(4)
ylim([0, 500]);
nLines=50053;nStart=nLines-1000+1;
% MM=read_file2mat(18185,18284,'out.Temp');%dz/100
MM=read_file2mat(nStart,nLines,'out.Temp');%dz/1000
tZ=MM(:,4)*1e4;
mtZ=mean(tZ);
tZMat=mtZ*ones(length(tZ),1);
plot(MM(:,2),tZ,'-');hold on;
plot(MM(:,2),tZMat);