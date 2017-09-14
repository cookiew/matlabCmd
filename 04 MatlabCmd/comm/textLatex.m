% *****************************************************************************************
% File Name     : textLatex.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Sat, Sep. 05th, 2015. 10:10:56 PM
% Last Modified : 
% Purpose       : put some text at some position, interpretered in Latex
% *****************************************************************************************

function textLatex(position, TEXT, fontSize)
% fontSize
if length(position) == 2
    position(3) = 0;
end
t = text(position(1),position(2),position(3),TEXT);
set(t,'interpreter','latex','fontsize',fontSize);

% end of file -------------------
