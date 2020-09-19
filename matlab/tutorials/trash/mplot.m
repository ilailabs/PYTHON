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

figure(3)
MM=read_file2mat(17022,18021,'out.Temp');
tZ=MM(:,4)*1e4;
mtZ=mean(tZ);
tZMat=mtZ*ones(length(tZ),1);
plot(MM(:,1),tZ,'-');hold on;
plot(MM(:,1),tZMat);