%**************************************************************************
%   File Name     : linearMap.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Email         : zhoudingjiang@gmail.com
%   Create Time   : 
%   Last Modified : 
%   Purpose       : map a value x in range1 into value y in range2
% if range1 = [x1,x2], range2 = [y1,y2], and x1 <= x <= x2, then
% y = y1 + ((x - x1)*(y1 - y2))/(x1 - x2)
% x1 doen't have to be less than x2
%**************************************************************************
function y = linearMap(range1, range2, x)
 

x1 = range1(1);
x2 = range1(2);
y1 = range2(1);
y2 = range2(2);

if x1 < x2
    if x < x1-0.0001
        error('linearMap: below the low bound!');
        y = y1;
        return
    elseif x > x2
        error('linearMap: above the up bound!');
        y = y2;
        return
    end
elseif x2 < x1
    if x < x2
        error('linearMap: below the low bound!');
        y = y2;
        return
    elseif x > x1
        error('linearMap: above the up bound!');
        y = y1;
        return
    end
else
    error('linearMap: no range!');
    y = x1; % = x2
    return
end
y = y1 + ((x - x1)*(y1 - y2))/(x1 - x2);

% end of file -----------------------------------------------------------------------------

