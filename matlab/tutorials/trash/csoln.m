%%why the problem proceeds for only index j=2:12 how to fix this?
%%When size h is reduced why soln has huge error/diff
clear;
h=0.01;
delt=h^2/2;

i=1;
x(i,:)=[0.0:h:1.0];
t(i,:)=zeros(length(x),1)';


u(:,1)=0;
u(:,length(x))=0;
u(2:end-1)=sin(x(2:end-1)*2*pi);

for i=2:10
t(i,:)=t(i-1,:)+delt;
dt=(i-1)*delt;
for j=2:length(u)-1
x(i,:)=[0.0:h:1.0];
u(i,j) = (1/h^2)*(u(i-1,j+1) - 2*u(i-1,j) + u(i-1,j-1))*dt + u(i-1,j);
end
end

surf(x,t,u);
xlabel('x-com');
ylabel('time-com');