%**************************************************************************
%   File Name     : normalize.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   :  
%   Last Modified :  
%   Purpose       : to normalize a vector
%**************************************************************************
function vecOut = normalize(vecIn)
% must be a column or row vector, any length is OK
normV = 0;
for i = 1 : length(vecIn)
    normV = normV + (vecIn(i)^2);
end
vecOut = vecIn/sqrt(normV);

% end of file -------------------------------------------------------------
