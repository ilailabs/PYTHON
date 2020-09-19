epi = 1;
sig = 1.2; %3.1 to 3.3%
%sig1 = 3.6527
% rm = 2^(1/6)sig%

syms r
pe(r) = 4*epi*((sig/r)^12-(sig/r)^6);
rvar=1.35:0.00001:1.351;
pene=double(pe(rvar));

%ylim([-20,120]);
xlim([1,2]);

plot(rvar,pene);