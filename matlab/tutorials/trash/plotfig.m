load
hold on;

plot(A(21,4)*ones(1,11),[0:10]);
plot(A(32,4)*ones(1,11),[0:10]);




plot(A(:,4),A(:,6));
plot(A(:,4),A(:,7));
xlim([0,1.6882])
ylim([0,10])

xlabel('q_r')
ylabel('frequency(THz)');
