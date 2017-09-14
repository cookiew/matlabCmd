% *****************************************************************************************
% File Name     : plotLine3D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Thu, Oct. 08th, 2015. 00:23:50 PM
% Last Modified : 
% Purpose       : to plot 3D lines, extended from plotLine2D.m
% -----------------------------------------------------------------------------------------
% INPUTS
%     
% OUTPUTS
%        handle : plot handle for legend
% *****************************************************************************************
function handle = plotLine3D(line3D, clr, lw)

% correction ----------
size1 = size(line3D);
% size2 = size(size1);

% plotting ------------
if ischar(clr)
    handle = plot3(line3D(1,:),line3D(2,:),line3D(3,:),'Color',clr,'linewidth',lw);
elseif length(clr) == 3
    handle = plot3(line3D(1,:),line3D(2,:),line3D(3,:),'Color','color',clr,'linewidth',lw);
else
    colors = initialColorFnc(20);
    if clr > 20
        colors(clr,:) = rand(1,3);
    end
    handle = plot3(line3D(1,:),line3D(2,:),line3D(3,:),'Color',colors(clr,:),'linewidth',lw);
end

% end of file ---------------------------------------------

