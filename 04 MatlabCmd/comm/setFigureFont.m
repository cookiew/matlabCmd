% *****************************************************************************************
% File Name     : setFigureFont.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Sat, Sep. 05th, 2015. 10:10:56 PM
% Last Modified : 
% Purpose       : put some text at some position, interpretered in Latex
% *****************************************************************************************
function setFigureFont(figNo, fontSize)

figure(figNo);
labelHandles = findall(findobj(gcf),'Type','text'); % xlabel, ylabel, title
set(labelHandles,'fontSize',fontSize);

% end of file --------------------

