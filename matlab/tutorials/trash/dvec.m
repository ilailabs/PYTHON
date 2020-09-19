function dvec(dir,p1,p2)
x1=[p1(1),p2(1)];
y1=[p1(2),p2(2)];
z1=[p1(3),p2(3)];
if dir=='x'
line(x1,y1,z1,'Color','red','LineWidth',2.5)
end
if dir=='y'
line(x1,y1,z1,'Color','green','LineWidth',2.5)
end
if dir=='z'
line(x1,y1,z1,'Color','blue','LineWidth',2.5)
end
if dir=='l'
line(x1,y1,z1,'Color','black','LineWidth',1)
end