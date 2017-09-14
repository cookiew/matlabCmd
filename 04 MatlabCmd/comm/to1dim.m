% *************************************************************************
%    File Name     : to1dim.m
%    Author        : Dingjiang Zhou
%                    Boston University, Boston, 02215
%    Create Time   : Sat, May. 25th, 2013. 04:42:09 PM
%    Last Modified :
%    Purpose       : take out the data in the mXnXl 3D matrix.
% 
% INPUTS:
%           in : input data
% OUTPUT:
%          out : ouput data

% otherwise, it cannot be used in plot, such as:
% plot(timeStep*(1:length(quad.pos(1,quadIdx,:))),quad.pos(1,quadIdx,:),'-')
% *************************************************************************
function [out] = to1dim(in)

l = length(in);
out = zeros(1,l);
% map to the output one by one
for i = 1 : l
   out(i) = in(i);    
end

% end of file -------------------------------------------------------------