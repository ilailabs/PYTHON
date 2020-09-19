function mygraph(A,mytitle,xlab,ylab,a,b)
mkdir(mytitle)
plot(A(:,a),A(:,b))
title(mytitle);
xlabel(xlab),ylabel(ylab);
savefig(ylab);
movefile('*.fig',mytitle)