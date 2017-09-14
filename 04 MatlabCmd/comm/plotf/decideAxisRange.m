% note:
% t is just time, for example, from 0 to T, its length should be the same with dataIn
% Y must be a N X M matrix
function XYZlmts = decideAxisRange(t, Y, extension)
yMax = Y(1,1);
yMin = Y(1,1);
dataSets = length(Y(:,1));
dataLen = length(Y(1,:));
for i = 1 : dataSets
    for j = 1 : dataLen
        if yMax < Y(i,j)
            yMax = Y(i,j);
        end
        if yMin > Y(i,j)
            yMin = Y(i,j);
        end
    end
end
% set a smart axis range
% extension = 0.5;
XYZlmts = [t(1),t(end),...
           (1+extension)*yMin-extension*yMax,(1+extension)*yMax-extension*yMin];
       
       
% temparary fix

if XYZlmts(3) == XYZlmts(4)
    XYZlmts(3) = XYZlmts(3) - 0.3;
    XYZlmts(4) = XYZlmts(4) + 0.3;
end