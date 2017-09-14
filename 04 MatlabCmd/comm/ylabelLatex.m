% *****************************************************************************************
% File Name     : ylabelLatex.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Sat, Sep. 05th, 2015. 10:10:56 PM
% Last Modified : 
% Purpose       : ylabel 
% *****************************************************************************************

function ylabelLatex(YLABEL, fontSize)
yl = ylabel(YLABEL);
set(yl,'interpreter','latex');
set(yl,'fontsize',fontSize);