t=x;x=y;


y = fft(x);     
f = (0:length(y)-1)*50/length(y);

tY(:,k)=y;
tF(:,k)=f;

plot(f,abs(y))
title('Magnitude')
