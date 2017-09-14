% *****************************************************************************************
% File Name     : legendSet.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Sat, Sep. 05th, 2015. 10:10:56 PM
% Last Modified : 
% Purpose       : legend
% 
%
% note:
% only works for a single legend!
% *****************************************************************************************

function legendSet(h, LEGEND, position, fontSize)

h1 = legend(h,LEGEND,[position(1),position(2),0.1,0.2]);

set(h1,'fontsize',fontSize);

% set(h1,'position',position);