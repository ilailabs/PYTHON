
atomPlane = [1:100];
time = [1:1:100];

sDev = 15; mean = time(length(time)/2); A=1;
V = A*gaussmf(time,[sDev mean]);

counter=1;ctrStep=round(length(V)/length(atomPlane));
for i=1:length(atomPlane)
    vel(i,:)= [i V(counter) 0.0000 0.0000];
    counter=counter+ctrStep;
end

 plot(vel(:,1),vel(:,2));