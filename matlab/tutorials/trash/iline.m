pto1 = [a(1) b(1)];  
pto2 = [a(2) b(2)];
% Original line
[line_x,line_y]=fillline(pto1(1,:), pto2(1,:),100);
line_xy = [line_x' line_y'];    
plot(pto1(1), pto1(2), '+b')
hold on
plot(pto2(1), pto2(2), '.b')
hold on
plot(line_xy(:,1), line_xy(:,2), 'm') % Pintamos iterativamente las lineas
% Extend the line
factor_distance = 1.2;
theta = atan2(pto2(2) - pto1(2), pto2(1) - pto1(1)); % rad
pto2_update(1) = pto2(1) + ( factor_distance * cosd(theta) );
pto2_update(2) = pto2(2) + ( factor_distance * sind(theta) );
% Update new points in line
[line_x,line_y]=fillline(pto1(1,:), pto2_update(1,:),100);
line_xy = [line_x' line_y'];    
figure
plot(pto1(1), pto1(2), '+b')
hold on
plot(pto2(1), pto2(2), '.b')
hold on
plot(line_xy(:,1), line_xy(:,2), 'm')