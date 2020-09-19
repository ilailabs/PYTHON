function rot_M=myrot_m(N)

x=[1 0 0];
y=[0 1 0];
z=[0 0 1];
new_x=[1 1 1];
new_y=[-1 0 1];
new_z=[1 -2 1];
x1=uvec(new_x);
y1=uvec(new_y);
z1=uvec(new_z);
[rw,~]=size(N);

vec1=cross(x,x1);
t1=abwvec(x,x1);

for i=1:rw
    temp=N(i,:);
    np=myrot_p([temp(1),temp(2),temp(3)],vec1,t1);
    rot_M(i,:)=[np(1),np(2),np(3),temp(4)];
end
N=rot_M;
vec1=x1;
t1=abwvec(N(2,1:3),y1);

for i=1:rw
    temp=N(i,:);
    np=myrot_p([temp(1),temp(2),temp(3)],vec1,t1);
    rot_M(i,:)=[np(1),np(2),np(3),temp(4)];
end

