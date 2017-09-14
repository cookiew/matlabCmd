% *************************************************************************
%    File Name     : plotVec2D.m
%    Author        : Dingjiang Zhou
%                    Boston University, Boston, 02215
%    Create Time   : Sat, May. 25th, 2013. 04:42:09 PM
%    Last Modified :
%    Purpose       : the parameters used to relates all the coordinate
%                    systems used in the control. refer to readme.m for the
%                    detail of the systems.
% 
% INPUTS:
%        strtP : start point in 2D plane, 2 x 1 vector
%         endP : end point in the 2D plane, 2 x 1 vector
%   arrowScale : the scale of the arrow
%          clr : color to plot
%           lw : linewidth
% *************************************************************************
function plotHandle = plotVec2D(strtP, endP, arrowScale, clr, lw)

if norm(endP-strtP)<0.01
    return;
end
if ischar(clr)
    plotHandle = plot([strtP(1),endP(1)],[strtP(2),endP(2)],clr,'linewidth',lw);
elseif length(clr) == 3
    plotHandle = plot([strtP(1),endP(1)],[strtP(2),endP(2)],'color',clr,'linewidth',lw);
elseif length(clr) == 1
    colors = initialColorFnc(clr);
    if clr > 110
        colors(clr,:) = rand(1,3);
    end
     plotHandle = plot([strtP(1),endP(1)],[strtP(2),endP(2)],'color',colors(clr,:),'linewidth',lw);
end

baseAngle = atan2(endP(2)-strtP(2),endP(1)-strtP(1));
ang1 = pi + baseAngle + pi/8;
ang2 = pi + baseAngle - pi/8;

arrow1 = [endP(1);endP(2)] + [arrowScale*cos(ang1);arrowScale*sin(ang1)];
arrow2 = [endP(1);endP(2)] + [arrowScale*cos(ang2);arrowScale*sin(ang2)];
if ischar(clr)
    plot([endP(1),arrow1(1)],[endP(2),arrow1(2)],clr,'linewidth',lw);
    plot([endP(1),arrow2(1)],[endP(2),arrow2(2)],clr,'linewidth',lw);
elseif length(clr) == 3
    plot([endP(1),arrow1(1)],[endP(2),arrow1(2)],'color',clr,'linewidth',lw);
    plot([endP(1),arrow2(1)],[endP(2),arrow2(2)],'color',clr,'linewidth',lw);
elseif length(clr) == 1
    colors = initialColorFnc(clr);
    if clr > 110
        colors(clr,:) = rand(1,3);
    end
    plot([endP(1),arrow1(1)],[endP(2),arrow1(2)],'color',colors(clr,:),'linewidth',lw);
    plot([endP(1),arrow2(1)],[endP(2),arrow2(2)],'color',colors(clr,:),'linewidth',lw);
end

% end of file -------------------------------------------------------------

