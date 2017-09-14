
function handle = plotEllipse2D(center, xAxis, yAxis, dAngle, clr, lw, FILL, bodyTransp)
 
if nargin == 6
    [handle,points] = plotEllipse2Dsub1(center,xAxis,yAxis,dAngle,clr,lw);
elseif nargin == 8
    [handle,points] = plotEllipse2Dsub1(center,xAxis,yAxis,dAngle,clr,lw);
    plotEllipse2Dsub2(points,clr,FILL,bodyTransp);
end

% ----------------------------------------------------------------------------------------
function [handle,points] = plotEllipse2Dsub1(center, xAxis, yAxis, dAngle, clr, lw)
t = 0 : dAngle/180*pi : 2*pi;
x = xAxis*cos(t) + center(1);
y = yAxis*sin(t) + center(2);
 
points = [x;y];

if ischar(clr)
    handle = plot(x,y,clr,'linewidth',lw); 
else
    colors = initialColorFnc(clr);
    if clr > 20
        colors(clr,:) = rand(1,3);
    end
    handle = plot(x,y,'color',colors(clr,:),'linewidth',lw); 
end

% ----------------------------------------------------------------------------------------
function plotEllipse2Dsub2(points, clr, FILL, bodyTransp)
if ischar(clr) 
    if FILL == 'F' || FILL == 'f'
        fill(points(1,:),points(2,:),clr,'FaceAlpha',bodyTransp,'edgecolor',clr);
    end
else
    colors = initialColorFnc(clr);
    if clr > 20
        colors(clr,:) = rand(1,3);
    end 
    if FILL == 'F' || FILL == 'f'
        fill(points(1,:),points(2,:),colors(clr,:),...
            'FaceAlpha',bodyTransp,'edgecolor',colors(clr,:));
    end
end




