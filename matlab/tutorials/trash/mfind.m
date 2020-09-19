K = find(lz>460 & lz<1140)
X = lz(K);
Y = Av(K);
p = polyfit(X,Y,1)
YY = p(1)*X +p(2);
plot(X, YY);
hold on;
plot(lz, Av);
ylim([350,650])
slope = range(YY)/range(X)