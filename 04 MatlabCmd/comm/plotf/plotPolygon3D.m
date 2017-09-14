% *****************************************************************************************
% File Name     : plotPolygon3D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Sun, June. 7th, 2015. 07:50:59 PM
% Last Modified : 
% Purpose       : to plot the polygon in 3D 
% *****************************************************************************************

function plotPolygon3D(Polygon, color, lw)

sizeP = size(Polygon);


if sizeP(1) == 3 % each column is a point, and used as default
    lengthP = sizeP(2);
    if norm(Polygon(:,1) - Polygon(:,lengthP)) > 1e-3
        Polygon = [Polygon,Polygon(:,1)];
    end
    plot3(Polygon(1,:),Polygon(2,:),Polygon(3,:),color,'linewidth',lw);
    
elseif sizeP(2) == 3 % each row is a point
    lengthP = sizeP(1);
    if Polygon(1,1)~=Polygon(lengthP,1) || ...
            Polygon(1,2)~=Polygon(lengthP,2) || ...
            Polygon(1,3)~=Polygon(lengthP,3)
        Polygon(lengthP+1,1) = Polygon(1,1);
        Polygon(lengthP+1,2) = Polygon(1,2);
        Polygon(lengthP+1,3) = Polygon(1,3);
    end
    plot3(Polygon(:,1),Polygon(:,2),Polygon(:,3), color,'linewidth',lw)
    
    
    
end