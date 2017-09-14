x = [3 5 2 4 5];
y = [2 4 5 6 3];
[Vx,Vy] = voronoi(x,y);
for i = 1 : 5
    plotPoint2Point([Vx(1,i);Vy(1,i)],[Vx(2,i);Vy(2,i)],'k',2);
end