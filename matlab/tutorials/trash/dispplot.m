function [Ai,Af,c_d]=dispplot(ifname,ffname)
%ifname=0;ffname=10000;
filename1=strcat('dumpcord.',num2str(ifname));
A=read_dump2mat(filename1);
A=sortrows(A,1);
Ai=[A(:,1), A(:,3), A(:,4), A(:,5)];
filename2=strcat('dumpcord.',num2str(ffname));
B=read_dump2mat(filename2);
B=sortrows(B,1);
Af=[B(:,1), B(:,3), B(:,4), B(:,5)];
c_d=[B(:,1), B(:,9)];
x=Ai(:,2)-Af(:,2);
y=Ai(:,3)-Af(:,3);
z=Ai(:,4)-Af(:,4);
dis=(x.^2+y.^2+z.^2).^(0.5);
diff=dis-c_d(:,2);
diff=round(diff,4);
lo=logical(diff);
nAf=Af(~lo,:,:,:);nAi=Ai(~lo,:,:,:);ndis=dis(~lo);
%stem3(Ai(:,2),Ai(:,3),c_d(:,2));%this gives resutls with uncertinity so I don't prefer
stem3(nAi(:,2),nAi(:,3),ndis);
view(0,90) %to view -> xy plane
savefig('top_z');
view(0,0)
savefig('front_y')%front view -> xz plane
view(90,0)
savefig('side_x')%side view -> yz plane



