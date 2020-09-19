function [deltaL, l]=findRepeatDist(M)
k=unique(M);
l=length(k);
deltaL = range(k)/l;
end