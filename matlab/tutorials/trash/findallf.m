ns=5;
ff=[];

for j=1:ns-2
ff = [ff,checkFFT(j)];
end

ff=round(ff,2);
ff=unique(ff);