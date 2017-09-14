% *****************************************************************************************
% File Name     : xlabelLatex.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Sat, Sep. 05th, 2015. 10:10:56 PM
% Last Modified : 
% Purpose       : xlabel 
% *****************************************************************************************
function xlabelLatex(XLABEL, fontSize)
xl = xlabel(XLABEL);
set(xl,'interpreter','latex');
set(xl,'fontsize',fontSize);