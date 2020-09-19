n=10;
a=4.04;
m=26.98;

nA=n; nAB=2; nB=n;
aA=a; aAB=a;      aB=a;
mA=m; mAB=m;      mB=m;

s = a;

lj3Datafile([nA, nAB, nB],[aA, aAB, aB], [mA, mAB, mB]);
% lj2Datafile([nA, nB],[aA, aB],s,[mA, mB])