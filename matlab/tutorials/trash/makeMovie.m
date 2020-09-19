ax = gca();
V=VideoWriter('gpulse.avi','Motion JPEG AVI');
V.FrameRate = 20;
open(V);
for frame=0:10:1900
% filename=['disp',num2str(frame),'.csv'];
% [pos,disp]=readcsv(filename);

n=frame;
a_fname=['wo_pulse/wo_pGrp/disp',num2str(n),'.csv'];
A_fname=['w_pulse/w_pGrp/disp',num2str(n),'.csv'];

a=readCsv(a_fname);
A=readCsv(A_fname);

x=a(:,1);
Y=A(:,2)-a(:,2);

plot(x,Y);

% h = plot(ax, pos, disp, 'Linewidth',1);
h = plot(ax, x, Y, 'Linewidth',1);

%hold on;yy = -0.02:0.001:0.02; xx = 1250*ones(length(yy));plot(xx,yy);
% annotation('textbox', [0.75, 0.1, 0.1, 0.1], 'String', frame)
ylim([-0.15 0.15]);
drawnow();
L=getframe(ax);
writeVideo(V,L);
delete(findall(gcf,'type','annotation'));
%hold off;
end
close(V);

%=============SUB-FUNCTIONS================%
% function [time, data] = readcsv(filename)
% 
% fileID = fopen(filename);
% 
% i=1;
% while ~feof(fileID)
% tline = fgetl(fileID);
% newString = split(tline,',');
% time_str = newString{1};
% time(i,:) = eval(time_str);
% var_str = newString{2};
% data(i,:) = eval(var_str);
% i=i+1;
% end
% 
% end

