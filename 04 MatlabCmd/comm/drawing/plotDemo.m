% This is a test function, it would also be used as a demo
clear all; close all; clc
global axisRange;       % this is important
axisRange=[-15,15,-10,10];

% have a figure
newfigure('hab');
axis(axisRange);

% plot a circle (center + radius)
plotCircle2D([0;1],5,'r',2)       % (center, radius, color, linewidth)

% plot a line from tail to head
plotLineTail2Head([3,4],[7,10],'b',1)

% plot a ellipse    x^2/a^2 + y^2/b^2 = 1
plotEllipse([0,0],[10,6],'m',1)

% plot a line through one dot, and know the direction vector (do not have
% to be unit vector 
plotLineDotDirVec([4,5], [-1,2], 20, 1, 'r', 2)

% plot a line through the line function ax+by+c=0
% LineE.a=2;
plotLineABC([2,1,7],'g',1);

% plot a vector
% plot the vertical line to a line

% % plot a rectangle defined by left-down and right-up point
plotRectangle([-5,-5],[5,5],'b',2,'nofill') % 'fill' for filling color

% plot a polygon
% PolygonG.x=[0 5 7 8 10 8 5 3 1];
% PolygonG.y=[0 -2 -1 0 6 7.5 8 7 5];
% PolygonG.c='b';
% PolygonG.w=1;                   % fill if .fill==1
% PolygonG.fclr=[0.7,0.8,0.4];    % fill if .fill==2
% PolygonG.fill=1;
plgn=[0 0 ; 5 -2; 7 -1; 8 0; 10 6; 8 7.5; 5 8; 3 7; 1 5]; % important
plotPolygon(plgn, 'b', 1, 'fill');

% A=1.2*[1.2  1.2; 
%         -1  1];
% tempP=A*[PolygonG.x;PolygonG.y];
% PolygonH.x=tempP(1,:);
% PolygonH.y=tempP(2,:);
% PolygonH.c='m';                 % fill if .fill==1
% PolygonH.fclr=[0.5,0.5,0.1];    % fill if .fill==2
% PolygonH.w=1;
% PolygonH.fill=2;
% PolygonH.alpha=0.7;             % transparency
% plotPolygon(PolygonH)
% axis([-15,30,-20,20])



alpha(0.4);
