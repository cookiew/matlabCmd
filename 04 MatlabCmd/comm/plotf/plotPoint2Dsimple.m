% *****************************************************************************************
% File Name     : markPoint2D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Fri, Jul. 24th, 2015. 09:28:40 PM
% Last Modified : Fri, Jul. 24th, 2015. 09:28:40 PM
% Purpose       : to mark a point with a circle and color
% *****************************************************************************************
function handle = plotPoint2Dsimple(point, radius, clr)

error('plotPoint2Dsimple: obsolate file, use plotPoint2D instead!');

if ischar(clr) || length(clr) == 3
    handle = plot(point(1),point(2),'o','Color',clr,'MarkerSize',radius,...
    'MarkerFaceColor',clr);
elseif length(clr) == 1
    colors = initialColorFnc(clr);
    if clr > 20
        colors(clr,:) = rand(1,3);
    end
    handle = plot(point(1),point(2),'o','Color',colors(clr,:),'MarkerSize',radius,...
    'MarkerFaceColor',colors(clr,:));
else
    error('plotPoint2DSimple: not designed');
end

% end of file -------------------
