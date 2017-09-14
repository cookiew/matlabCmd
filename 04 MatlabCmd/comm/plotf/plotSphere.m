function plotSphere(center, radius, longitudeGrid, latitudeGrid, clr, lw)

% plotCircle3D(center,[0;0;1],radius,clr,lw);


% plotCircle3D(center,[0;1;0],radius,clr,lw);
axis = [1;0;0];
for k = 1 : longitudeGrid
    plotCircle3D(center,axis,radius,clr,lw);
    axis = rot('z',2*pi/longitudeGrid)*axis;
end

% latitude, up -----
axis = [0;0;1];
radius = 1;
bigRadius = radius;
center1 = center;
for k = 1 : latitudeGrid
    plotCircle3D(center1,axis,radius,clr,lw);
    theta = k/latitudeGrid*pi/2;
    center1 = center + [0;0;sin(theta)*bigRadius];
    radius = bigRadius*cos(k*pi/2/latitudeGrid);
end

% latitude, down ---------
axis = [0;0;1];
radius = 1;
bigRadius = radius;
center1 = center;
for k = 1 : latitudeGrid
    plotCircle3D(center1,axis,radius,clr,lw);
    theta = k/latitudeGrid*pi/2;
    center1 = center - [0;0;sin(theta)*bigRadius];
    radius = bigRadius*cos(k*pi/2/latitudeGrid);
end

% end of file --------------------------------------


