% *****************************************************************************************
% File Name     : legendSetLatexMulti.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Mon, Sep. 14th, 2015. 10:12:38 PM
% Last Modified : 
% Purpose       : legend
% 
%
% note:
% only works for a single legend!
% *****************************************************************************************

function legendSetLatexMulti(h, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7)

len = length(h1);

% h1 = legend(h,LEGEND,[position(1),position(2),0.5,0.6]);

set(h1,'fontsize',fontSize);

set(h1,'interpreter','latex');

% set(h1,'position',position);