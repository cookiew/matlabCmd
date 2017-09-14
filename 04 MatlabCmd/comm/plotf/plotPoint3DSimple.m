% *****************************************************************************************
% File Name     : markPoint2D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Fri, Jul. 24th, 2015. 09:28:40 PM
% Last Modified : Fri, Jul. 24th, 2015. 09:28:40 PM
% Purpose       : to mark a point with a circle and color
%        handle : plot handle for legend
% *****************************************************************************************
function handle = plotPoint3Dsimple(point, radius, clr)

error('not used anymore');

if ischar(clr) || length(clr) == 3
    handle = plot3(point(1),point(2),point(3),'o','Color',clr,'MarkerSize',radius,...
        'MarkerFaceColor',clr);
elseif length(clr) == 1
    colors = initialColorFnc();
    if clr > 20
        colors(clr,:) = rand(1,3);
    end
    handle = plot(point(1),point(2),point(3),'o','Color',colors(clr,:),'MarkerSize',...
        radius,'MarkerFaceColor',colors(clr,:));
else
    error('markPoint2DSimple: not designed');
end

% end of file -------------------
