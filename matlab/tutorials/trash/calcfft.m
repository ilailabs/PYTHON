fTheory

% f=checkFFT(9);
load fvar.mat
f=abs(f);
f=round(f,2);
f=unique(f);
F=2*pi*f;

%%plot fft
hold on;
l=length(kvec);
for j=1:length(F)
    plot(kvec,ones(l,1)*F(j));
end