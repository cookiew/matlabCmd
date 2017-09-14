% This is a test function, it would also be used as a demo
clear all; close all; clc
global axisRange;       % this is important
axisRange=[-5,5,-5,5];

% have a figure
figure(1);
axis(axisRange);
hold on;
axis equal;
grid on
plotXYAxis(axisRange,'k',2);
% function plotLineABC(ABC, color, width)
plotLineABC([2 -5 1],'r',1);
plotLineABC([-3 4 2],'b',1);
plotLineNorm0([4,5],'g',1);
alpha(1);


figure(2)
axis(axisRange);
hold on;
axis equal;
grid on
plotXYAxis(axisRange,'k',2);
plotLineABC([2 -3 4],'r',1);
plotLineABC([-5 4 5],'b',1);
plotLineNorm0([1,2],'g',1);

tilefigs