% *****************************************************************************************
% File Name     : plotPoint3D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Fri, Aug. 14th, 2015. 09:46:09 PM
% Last Modified : 
% Purpose       : to mark a point with a circle and color, and also put a text there
% -----------------------------------------------------------------------------------------
% INPUTS
%     
% OUTPUTS
%        handle : plot handle for legend
% *****************************************************************************************
function handle = plotPoint3D(point, radius, clr, TEXT, offset, fig)



% -----------------------------------------------------------------------------------------
if nargin == 3
    handle = plotPoint3Dsub1(point,radius,clr);
elseif nargin == 6
    handle = plotPoint3Dsub1(point,radius,clr);
    plotPoint3Dsub2(point,TEXT,offset,fig);
else
    error('plotPoint3D: wrong argument');
end

% -----------------------------------------------------------------------------------------
function handle = plotPoint3Dsub1(point, radius, clr)

if ischar(clr)
    handle = plot3(point(1),point(2),point(3),'o','Color',clr,...
        'MarkerSize',radius,'MarkerEdgeColor',clr,'MarkerFaceColor',clr);
else
    colors = initialColorFnc(20);
    if clr > 110;
        colors(clr,:) = rand(1,3);
    end
    handle = plot3(point(1),point(2),point(3),'o','Color',colors(clr,:),...
        'MarkerSize',radius,'MarkerEdgeColor',colors(clr,:),...
        'MarkerFaceColor',colors(clr,:));
end

% -----------------------------------------------------------------------------------------
function plotPoint3Dsub2(point, TEXT, offset, fig)

textPos = [point(1);point(2);point(3)] + [offset(1);offset(2);offset(3)];
text(textPos(1),textPos(2),textPos(3), TEXT, 'fontsize', fig.fontSize);

% end of file -------------------