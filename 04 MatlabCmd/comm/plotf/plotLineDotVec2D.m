function handle = plotLineDotVec2D(dot, vec, axisRange, clr, lw)

% if parallel to x-axis
if vec(2) == 0
    dot1 = [axisRange(1);dot(2)];
    dot2 = [axisRange(2);dot(2)];
    handle = plotDot2Dot2D(dot1,dot2,clr,lw);
    return
end
% if parallel to y-axis
if vec(1) == 0
    dot1 = [dot(1);axisRange(3)];
    dot2 = [dot(1);axisRange(4)];
    handle = plotDot2Dot2D(dot1,dot2,clr,lw);
    return
end
% not parallel, hence have four intersections with the figure boards
% convert dot, vec to a*x + b*y + c = 0;
%     x - dot(1)       vec(1)
%   --------------  =  -------
%     y - dot(2)       vec(2)
a =  vec(2);
b = -vec(1);
c = -vec(2)*dot(1) + vec(1)*dot(2);
dot1 = [axisRange(1);(- a*axisRange(1) - c)/b];
dot2 = [axisRange(2);(- a*axisRange(2) - c)/b];
dot3 = [(-b*axisRange(3) - c)/a;axisRange(3)];
dot4 = [(-b*axisRange(4) - c)/a;axisRange(4)];
handle = plotDot2Dot2D(dot1,dot2,clr,lw);
plotDot2Dot2D(dot3,dot4,clr,lw);