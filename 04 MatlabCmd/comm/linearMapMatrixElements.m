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
function y = linearMapMatrixElements(range1, range2, x)

% initial values
sizeX = size(x);
size1 = sizeX(1);
size2 = sizeX(2);
y = zeros(size1,size2);

%
x1 = range1(1);
x2 = range1(2);
y1 = range2(1);
y2 = range2(2);
for i = 1 : size1
    for j = 1 : size2
        if x1 < x2
            if x(i,j) < x1-0.0001
                error('linearMap: below the low bound!');
                y(i,j) = y1;
                continue
            elseif x(i,j) > x2
                error('linearMap: above the up bound!');
                y(i,j) = y2;
                continue
            end
        elseif x2 < x1
            if x(i,j) < x2
                error('linearMap: below the low bound!');
                y(i,j) = y2;
                continue
            elseif x(i,j) > x1
                error('linearMap: above the up bound!');
                y(i,j) = y1;
                continue
            end
        else
            error('linearMap: no range!');
            y(i,j) = x1; % = x2
            continue
        end
        y(i,j) = y1 + ((x(i,j) - x1)*(y1 - y2))/(x1 - x2);
    end
end
% end of file -----------------------------------------------------------------------------

