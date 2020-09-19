function after_smoothing=mysmooth(ampli)
temp = ampli;
for i=1:100
temp=movmean(temp,2);
end
after_smoothing=temp;
end