%**************************************************************************
%   File Name     : variance.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   :  
%   Last Modified :  
%   Purpose       : calculating the variance of a single variable (data 
%                   collection)
%**************************************************************************
function var = variance(data)

meanD = mean(data); % the average/mean value

% the standard definition of variance -------------------------------------
% sum = 0;
% for i = 1:length(data)
%     sum = sum + (data(i)-meanD)^2;
% end
% 
% var = sum/length(data);
% ---This is the mean square error of the data w.r.t. its mean!

% a more sufficient way to calculate --------------------------------------
sum = 0;
for i = 1: length(data)
    sum = sum + data(i)^2;
end
var = sum/length(data) - meanD^2;

% end of file -------------------------------------------------------------