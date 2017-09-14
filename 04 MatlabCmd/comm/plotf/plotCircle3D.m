

function handle = plotCircle3D(center,  axis, radius, clr, lw,  FILL, bodyTransp)

% axis = [a;b;c], a, b, and c could be zero
if nargin == 5
    [handle,points] = plotCircle3Dsub1(center,  axis, radius, clr, lw);
elseif nargin == 7
    [handle,points] = plotCircle3Dsub1(center,  axis, radius, clr, lw);
    plotCircle3Dsub2(points,clr,FILL,bodyTransp);
end

% ---------------------------------------------------------------------------------
function [handle, points] = plotCircle3Dsub1(center,  axis, radius, clr, lw)
if axis(1) ~= 0
    y = 10;
    z = 10;
    x = (-axis(2)*y-axis(3)*z)/axis(1);
elseif axis(2) ~= 0
    x = 10;
    z = 10;
    y = (-axis(1)*x-axis(3)*z)/axis(2);
elseif axis(3) ~= 0
    x = 10;
    y = 10;
    z = (-axis(1)*x-axis(2)*y)/axis(3);
end
FirstPoint = normalize([x;y;z])*radius;
hatN = normalize([axis(1);axis(2);axis(3)]);
t = 0 : 0.01 : 2*pi;
points = zeros(3,length(t));
for i = 1 : length(t)
    points(:,i) = [center(1);center(2);center(3)]+rotAxis(hatN,t(i))*FirstPoint;
end

if ischar(clr)
    handle = plot3(points(1,:),points(2,:),points(3,:),clr,'linewidth',lw); 
elseif length(clr) == 3
    handle = plot3(points(1,:),points(2,:),points(3,:),'color',clr,'linewidth',lw); 
else
    clrs = initialColorFnc(20);
    if clr > 20
        clrs(clr,:) = rand(1,3);
    end
    handle = plot3(points(1,:),points(2,:),points(3,:),...
        'color',clrs(clr,:),'linewidth',lw);  
end

% ---------------------------------------------------------------------------------
function plotCircle3Dsub2(points, clr, FILL, bodyTransp)
if ischar(clr) 
    if FILL == 'F' || FILL == 'f'
        fill3(points(1,:),points(2,:),points(3,:),...
            clr,'FaceAlpha',bodyTransp,'edgecolor',clr);
    end
elseif length(clr) == 3 
    if FILL == 'F' || FILL == 'f'
        fill3(points(1,:),points(2,:),points(3,:),...
            clr,'FaceAlpha',bodyTransp,'edgecolor',clr);
    end
else
    clrs = initialColorFnc(20);
    if clr > 20
        clrs(clr,:) = rand(1,3);
    end 
    if FILL == 'F' || FILL == 'f'
        fill3(points(1,:),points(2,:),points(3,:),...
            clrs(clr,:),'FaceAlpha',bodyTransp,'edgecolor',clrs(clr,:)); 
    end 
end



% ---------------------------------------------------------------------------------




