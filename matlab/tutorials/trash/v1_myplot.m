y=D(:,2)-P(:,2);
x=5:5:50;
taskname='ene diff pp vs size';
plot(x,y,'-o');

xlabel('Size (no.of atoms=$x^3$x4)','Interpreter','latex','Fontname','TimesNewRoman');
ylabel('$ \Delta E_c (eV)/Plane$','Interpreter','latex','Fontname','TimesNewRoman')
legend('');
savefig(taskname)
