% *************************************************************************
%    File Name     : plotXYAxis.m
%    Author        : Dingjiang Zhou
%                    Boston University, Boston, 02215
%    Create Time   : some day in 2012
%    Last Modified :
%    Purpose       : plot the x, y axis in a plot
% 
% INPUTS:
%    axisRange : example [-1,1,-1,1];
%          clr : color to plot
%           lw : linewidth to plot
% *************************************************************************
function plotXYAxis(axisRange, clr, lw)

plotVec2D([axisRange(1);0],[axisRange(2);0],0.03*(axisRange(2)-axisRange(1)),clr,lw);
plotVec2D([0;axisRange(3)],[0;axisRange(4)],0.03*(axisRange(4)-axisRange(3)),clr,lw);