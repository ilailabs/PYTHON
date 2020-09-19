function B = tplot(l)
[t, d]=readcsv('1800.csv');
ind=(l-1)*139 +1;
eind=ind+139;
A(:,:,l)=[t(ind:eind), d(ind:eind)];
B=A(:,:,l);
% plot(B(:,1),B(:,2));
end
