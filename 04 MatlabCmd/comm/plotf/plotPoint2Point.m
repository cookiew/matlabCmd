% *****************************************************************************************
% File Name     : plotPoint2Point.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Fri, Jul. 24th, 2015. 09:45:40 PM
% Last Modified : Fri, Jul. 24th, 2015. 09:45:40 PM
% Purpose       : plot a straight line from one point to another
% -----------------------------------------------------------------------------------------
% INPUTS
%     
% OUTPUTS
%        handle : plot handle for legend
% *****************************************************************************************
function plotHandle = plotPoint2Point(point1, point2, clr, lw)
if ischar(clr) || length(clr) == 3
    if length(point1) == 2
        plotHandle = plot([point1(1),point2(1)],[point1(2),point2(2)],...
            'color',clr,'linewidth',lw);
    elseif length(point1) == 3
        plotHandle = plot3([point1(1),point2(1)],[point1(2),point2(2)],...
            [point1(3),point2(3)],'color',clr,'linewidth',lw);
    else
        error('plotPoint2Point: wrong arguement!');
    end
else
    colors = initialColorFnc(clr);
    if clr > 110
        colors(clr,:) = rand(1,3);
    end
    if length(point1) == 2
        plotHandle = plot([point1(1),point2(1)],[point1(2),point2(2)],...
            'color',colors(clr,:),'linewidth',lw);
    elseif length(point1) == 3
        plotHandle = plot3([point1(1),point2(1)],[point1(2),point2(2)],...
            [point1(3),point2(3)],'color',colors(clr,:),'linewidth',lw);
    else
        error('plotPoint2Point: wrong arguement!');
    end
end

% end of file --------

