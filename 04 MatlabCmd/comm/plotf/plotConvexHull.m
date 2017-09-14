% *****************************************************************************************
% File Name     : plotConvexHull.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : long time ago in 2012
% Last Modified : 
% Purpose       : plot a convex hull 
% -----------------------------------------------------------------------------------------
% INPUTS
%    hullPoints : the data points 
%  plotVertices : plot the vertices or not
%       hullClr : a color to plot the hull
% OUTPUTS

% NOTE
% THIS FUNCTION DOESN'T WORK WELL
% *****************************************************************************************
function plotConvexHull(hullPoints, plotVertices, hullClr, hullLw)

% make sure that hullPoints is 2 or 3 by N, hence plane or 3D plot
% a flag, if 1, then two points are in the other side
otherSide = 0;

sizeCP = size(hullPoints);
if sizeCP(2) <= 2
    disp('convexHullPlot: make sure more than 3 points are used to plot.');
end

% delete those points that are in the middle of two points ----------------
% not do. 

% plot the vertices
if plotVertices == 'y'
    plot3(hullPoints(1,:),hullPoints(2,:),hullPoints(3,:),'k*');
end
switch sizeCP(1)
    case 2
        disp('Code not finished yet.');
    case 3  % 3D convex hull plot
        if sizeCP(2) <= 4   % plot all possible connections
            for i = 1 : sizeCP(2) - 1
                for j = 2 : sizeCP(2)
                    plot3([hullPoints(1,i),hullPoints(1,j)],...
                          [hullPoints(2,i),hullPoints(2,j)],...
                          [hullPoints(3,i),hullPoints(3,j)],'Color',hullClr,'linewidth',hullLw);
                end
            end
        else
            for i = 1 : sizeCP(2) - 2
                for j = i+1 : sizeCP(2) - 1
                    for k = j+1 : sizeCP(2) 
                        % check if all other points are in the same side
                        otherSide = 0;
                        temp = cross(hullPoints(:,j)-hullPoints(:,i),...
                                     hullPoints(:,k)-hullPoints(:,i));
                        for ii = 1 : sizeCP(2)
                           if ii ~= i && ii ~= j && ii ~= k
                               firstI = ii;
                               break;
                           end
                        end
                        timesFirstI = temp'*(hullPoints(:,firstI)-hullPoints(:,i));
                        % all others have to be at the same side with  the 
                        % firstI point
                        for ii = 1 : sizeCP(2)
                            if ii ~= i && ii ~= j && ii ~= k && ii ~= firstI
                                % check 
                                timesII = temp'*(hullPoints(:,ii)-hullPoints(:,i));
                               if timesFirstI*timesII <= 0 % seems "<=" do good!
                                    otherSide = 1;
                                    break; % do not need to check others
                               end
                            end
                        end
                        if ii == sizeCP(2) && otherSide == 0
                           % plot the connections between i, j k
                           plot3([hullPoints(1,i),hullPoints(1,j),...
                                  hullPoints(1,k),hullPoints(1,i)],...
                                 [hullPoints(2,i),hullPoints(2,j),...
                                  hullPoints(2,k),hullPoints(2,i)],...
                                 [hullPoints(3,i),hullPoints(3,j),...
                                  hullPoints(3,k),hullPoints(3,i)],...
                                  'Color',hullClr,'linewidth',hullLw);
                        end
                    end     % of k
                end     % of j
            end     % of i
        end
    otherwise
        disp('function plotConvexHull: argument input wrong.');
end