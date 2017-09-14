% *****************************************************************************************
% File Name     : plotPolygon2D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Tue, Apr. 14th, 2015. 04:16:59 PM
% Last Modified : Tue, Apr. 26th, 2016. 03:03:40 PM
% Purpose       : to plot the polygon


% note:
%  if any point in polygon is [Inf;Inf], then the polygon won't be filled)
% *****************************************************************************************
function handle = plotPolygon2D(polygon, clr, lw, FILL, transp)


% expand the polygon so that the first point is the same with the last point

% infinity check is added on April 25th, 2016.
if  norm(polygon(:,1) - polygon(:,end)) > 1e-3 && ~isinf(polygon(1,1)) && ~isinf(polygon(2,end))
    polygon = [polygon,polygon(:,1)];
end
% polygon
if ischar(clr) || length(clr) == 3 
    % plot the polygon perimeter 
    handle = plot(polygon(1,:),polygon(2,:),'color',clr,'linewidth',lw);
    % fill the polygon
    if FILL == 'f' || FILL == 'F'
        fill(polygon(1,:),polygon(2,:),clr,...
            'FaceAlpha',transp,'edgecolor',clr);
    end
else
    clrs = initialColorFnc(clr);
    if clr > 20
        clrs(clr,:) = rand(1,3);
    end
    handle = plot(polygon(1,:),polygon(2,:),'color',clrs(clr,:),'linewidth',lw);
    % fill the polygon
    if FILL == 'f' || FILL == 'F'
        fill(polygon(1,:),polygon(2,:),clrs(clr,:),...
            'FaceAlpha',transp,'edgecolor',clrs(clr,:));
    end
end


% end of file -----------------------------------------------------------------------------
