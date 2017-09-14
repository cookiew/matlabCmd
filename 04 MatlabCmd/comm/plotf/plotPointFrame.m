%**************************************************************************
%   File Name     : plotPointFrame.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : 
%   Last Modified : Wed, May. 27th, 2013. 14:08:01 PM
%   Purpose       : in a known frame, plot another frame (should be the 
%                   matlab frame?) on some point.
%**************************************************************************
function plotPointFrame(point, bframe, axisLen, arrowSize, lw)
% input:
%    point     : position of the frame to be plot
%    bframe    : the frame to be plotted, shoud be a rotaton matrix.
%    axisLen   : how large is the axes
%    arrowSize : how large is the arrow
%    lw        : linewidth of the axes
% no transformation between different systems
x = point(1);
y = point(2);
z = point(3);

% plot the arrow
plotVec3D([x;y;z],[x;y;z]+bframe(:,1)*axisLen,arrowSize,'r',lw);
plotVec3D([x;y;z],[x;y;z]+bframe(:,2)*axisLen,arrowSize,'g',lw);
plotVec3D([x;y;z],[x;y;z]+bframe(:,3)*axisLen,arrowSize,'b',lw);
 

% end of file -------------------------------------------------------------

