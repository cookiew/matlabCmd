% *****************************************************************************************
% File Name     : setStickSize.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Sat, Sep. 05th, 2015. 10:10:56 PM
% Last Modified : 
% Purpose       : set stick size
% *****************************************************************************************
function setStickSize(figNo, fontSizeTick)

figure(figNo);
axesHandles = findall(0,'type','axes');
set(axesHandles,'fontSize',fontSizeTick);   % axes stickers

% end of file --------------