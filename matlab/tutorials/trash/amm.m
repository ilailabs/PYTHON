%impedence of crystal A
%assuming constant area desity of crystal A and B

z1 = 6.2778;
z2 = 6.3056;
% z2=z1;
% the1 = 0;
% the2 = 8;
% the2=the1;
% trans_coeff1 = (4*z1*z2*cosd(the1)*cosd(the2))/(z1*cosd(the1) + z2*cosd(the2))^2
trans_coeff2 = (4*z1*z2)/(z1 + z2)^2

% % amplitude based transmission coeff;

A_tr = 0.0690;
A_in = 0.0777;

alpha = (A_tr/A_in)^2