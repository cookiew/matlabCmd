
function handle =  plotCircle2D(center, radius, dAngle, clr, lw, FILL, bodyTransp)

% dAngle is in degree

% -----------------------------------------------------------------------------------------
if nargin == 5
    [handle,points] = plotCircle2Dsub1(center,radius,dAngle,clr,lw);
elseif nargin == 7
    [handle,points] = plotCircle2Dsub1(center,radius,dAngle,clr,lw);
    plotCircle2Dsub2(points,clr,FILL,bodyTransp);

end


% -----------------------------------------------------------------------------------------s
function [handle,points] = plotCircle2Dsub1(center, radius, dAngle, clr, lw) 
t = 0 : dAngle/180*pi : 2*pi;
x = radius*cos(t) + center(1);
y = radius*sin(t) + center(2);
points = [x;y]; % output

if ischar(clr)
    handle = plot(x,y,clr,'linewidth',lw); 
elseif length(clr) == 3
    handle = plot(x,y,'color',clr,'linewidth',lw);
else
    colors = initialColorFnc(clr);
    if clr > 110
        colors(clr,:) = rand(1,3);
    end
    handle = plot(x,y,'color',colors(clr,:),'linewidth',lw); 
end

% -----------------------------------------------------------------------------------------
function plotCircle2Dsub2(points, clr, FILL, bodyTransp)

if ischar(clr)
    if FILL == 'F' || FILL == 'f'
        fill(points(1,:),points(2,:),clr,'FaceAlpha',bodyTransp,'edgecolor',clr);
    end
elseif  length(clr) == 3
    if FILL == 'F' || FILL == 'f'
        fill(points(1,:),points(2,:),'color',clr,'FaceAlpha',bodyTransp,'edgecolor',clr);
    end
else
    colors = initialColorFnc(clr);
    if clr > 110
        colors(clr,:) = rand(1,3);
    end 
    if FILL == 'F' || FILL == 'f'
        fill(points(1,:),points(2,:),colors(clr,:),'FaceAlpha',bodyTransp,'edgecolor',colors(clr,:));
    end
end





