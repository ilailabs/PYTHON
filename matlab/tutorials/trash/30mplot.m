mat;
tZ=MM(:,4)*7.7365e+03;
mtZ=mean(tZ);
tZMat=mtZ*ones(length(tZ),1);
x=MM(:,2);
plot(x,tZ,'-');hold on;
plot(x,tZMat);

% i=207;j=442;
i=726;j=804;
xa=x(i:j);ya=tZ(i:j);

% i=309;j=429;
% 
% i=539;j=675;
% 
% i=726;j=804;

