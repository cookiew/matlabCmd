% *****************************************************************************************
% File Name     : plotPoint2D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Fri, Jul. 24th, 2015. 09:28:40 PM
% Last Modified : Fri, Jul. 24th, 2015. 09:28:40 PM
% Purpose       : to mark a point with a circle and color, and also put a text there
% -----------------------------------------------------------------------------------------
% INPUTS
%     
% OUTPUTS
%        handle : plot handle for legend
% *****************************************************************************************
function handle = plotPoint2D(point, radius, clr, TEXT, offset, fig)


% -----------------------------------------------------------------------------------------
if nargin == 3
    handle = plotPoint2Dsub1(point,radius,clr);
elseif nargin == 6
    handle = plotPoint2Dsub1(point,radius,clr);
    plotPoint2Dsub2(point,TEXT,offset,fig);

end

% -----------------------------------------------------------------------------------------
function handle = plotPoint2Dsub1(point, radius, clr)
if ischar(clr) || length(clr) == 3 % this is correct
    handle = plot(point(1),point(2),'o','Color',clr,...
        'MarkerSize',radius,'MarkerEdgeColor',clr,'MarkerFaceColor',clr);
else
    colors = initialColorFnc(clr);
    if clr > 110;
        colors(clr,:) = rand(1,3);
    end
    handle = plot(point(1),point(2),'o','Color',colors(clr,:),...
        'MarkerSize',radius,'MarkerEdgeColor',colors(clr,:),...
        'MarkerFaceColor',colors(clr,:));
end

% -----------------------------------------------------------------------------------------
function plotPoint2Dsub2(point, TEXT, offset, fig)
textPos = point + offset;
text(textPos(1),textPos(2),TEXT,'fontsize',fig.fontSize);


% end of file -----------------------------------------------------------------------------

