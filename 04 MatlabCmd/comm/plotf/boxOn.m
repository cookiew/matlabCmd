function boxOn(axisRange,lw)



% -----------------------------------------------------------------------------------------
if nargin == 1
    plotPoint2Point([axisRange(1);axisRange(3)],[axisRange(2);axisRange(3)],[0;0;0],1);
    plotPoint2Point([axisRange(2);axisRange(3)],[axisRange(2);axisRange(4)],[0;0;0],1);
    plotPoint2Point([axisRange(2);axisRange(4)],[axisRange(1);axisRange(4)],[0;0;0],1);
    plotPoint2Point([axisRange(1);axisRange(4)],[axisRange(1);axisRange(3)],[0;0;0],1);
elseif nargin == 2
    plotPoint2Point([axisRange(1);axisRange(3)],[axisRange(2);axisRange(3)],[0;0;0],lw);
    plotPoint2Point([axisRange(2);axisRange(3)],[axisRange(2);axisRange(4)],[0;0;0],lw);
    plotPoint2Point([axisRange(2);axisRange(4)],[axisRange(1);axisRange(4)],[0;0;0],lw);
    plotPoint2Point([axisRange(1);axisRange(4)],[axisRange(1);axisRange(3)],[0;0;0],lw);
end