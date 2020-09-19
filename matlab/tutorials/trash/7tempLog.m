% A = read_file2mat(1047,11047,'log.lammps');

% Step Temp PotEng KinEng lay1_tem lay2_tem lay3_tem 
%  1     2     3      4      5         6      7     

data = A(:,7);
plot(A(:,1)*0.001,data);
mean(data)

ylim([450,550])


