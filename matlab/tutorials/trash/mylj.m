epi = 12.9;
sig = 3.2; %3.1 to 3.3%
%sig1 = 3.6527
% rm = 2^(1/6)sig%

syms r
pe(r) = 4*epi*((sig/r)^12-(sig/r)^6);
rvar=3:0.01:5.0;
pene=double(pe(rvar));

plot(mat(:,1),mat(:,2));
hold on;
plot(mat(:,1),zeros(63,1));
plot(4.1*ones(63,1),mat(:,2));
ylim([-20,120]);
xlim([2,8]);

plot(rvar,pene);