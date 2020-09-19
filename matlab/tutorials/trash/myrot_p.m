function rot_p=myrot_p(p,vec,theta)
% theta=54.735;
% p=[1 1 1];
% vec=[0 1 -1];

u=vec(1);v=vec(2);w=vec(3);
x=p(1);y=p(2);z=p(3);
t=theta;

rp_x=(u*(u*x+v*y+w*z)*(1-cosd(t))+(u^2+v^2+w^2)*x*cosd(t)+sqrt(u^2+v^2+w^2)*(-w*y+v*z)*sind(t))/(u^2+v^2+w^2);
rp_y=(v*(u*x+v*y+w*z)*(1-cosd(t))+(u^2+v^2+w^2)*y*cosd(t)+sqrt(u^2+v^2+w^2)*(w*x-u*z)*sind(t))/(u^2+v^2+w^2);
rp_z=(w*(u*x+v*y+w*z)*(1-cosd(t))+(u^2+v^2+w^2)*z*cosd(t)+sqrt(u^2+v^2+w^2)*(-v*x+u*y)*sind(t))/(u^2+v^2+w^2);

rot_p=[rp_x,rp_y,rp_z];


