E = D(:,81:180);
F = 0;
[~,n] = size(E);
for i=1:n
    F = F + E(:,i)
end

F=F/n;

t_m = mean(F);

plot([1:1118]*1.4,F);
% ylim([t_m - 50, t_m + 50]);