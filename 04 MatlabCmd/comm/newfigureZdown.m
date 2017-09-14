% *****************************************************************************************
% File Name     : newfigureZdown.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Fri, Aug. 22nd, 2014. 05:41:25 PM
% Last Modified : 
% Purpose       : create a 3D view figure with proper parameters.
% -----------------------------------------------------------------------------------------
% INPUTS
%          
% OUTPUTS
%      
% *****************************************************************************************
function figHandle  = newfigureZdown(PARAM, XLABEL, YLABEL, TITLE, view3D, YN, fig)

% fig.VERSION = VERSION;
fig.stickSize = 15;
fig.fontSize = 18;
figHandle= newfigure(PARAM,fig);
% Z-down system
set(gca,'YDir','reverse');
set(gca,'ZDir','reverse');

xlabel(XLABEL);
ylabel(YLABEL);
title(TITLE);
if view3D == 1
    view([-83,10]);
elseif view3D == 2
    view([-82,58]);
elseif view3D == 3
    view([-85,34]);
elseif view3D == 0
    view([-90,90]);
else
    view([0,90]);
end
% view(VIEW);

if YN == 'y' || YN == 'Y'
    plotGlblSysZdown(0.2, 0, 2);
end


% end of file -----------------------------------------------------------------------------