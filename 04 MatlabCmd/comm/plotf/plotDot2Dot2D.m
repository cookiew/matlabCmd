% *****************************************************************************************
% File Name     : plotDot2Dot2D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Tue, Apr. 14th, 2015. 04:16:59 PM
% Last Modified : Tue, Apr. 14th, 2015. 04:16:59 PM
% Purpose       : to plot a line from dot1 to dot2, in 2D plane.
% *****************************************************************************************
function handle = plotDot2Dot2D(dot1, dot2, clr, lw)

if ischar(clr) || length(clr) == 3
    handle = plot([dot1(1),dot2(1)],[dot1(2),dot2(2)],clr,'linewidth',lw);
else
    colors = initialColorFnc(clr);
    if clr > 20;
        colors(clr,:) = rand(1,3);
    end
    handle = plot([dot1(1),dot2(1)],[dot1(2),dot2(2)],'color',colors(clr,:),'linewidth',lw);
end