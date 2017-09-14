% *****************************************************************************************
% File Name     : plotDot2Dot2D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Tue, Apr. 14th, 2015. 04:16:59 PM
% Last Modified : Tue, Apr. 14th, 2015. 04:16:59 PM
% Purpose       : to plot a line from dot1 to dot2, in 2D plane.
% *****************************************************************************************
function handle = plotDot2Dot3Dstyle(dot1, dot2, STYLE, clr, lw)

% color(char) and STYLE
%             b     blue          .     point              -     solid
%             g     green         o     circle             :     dotted
%             r     red           x     x-mark             -.    dashdot 
%             c     cyan          +     plus               --    dashed   
%             m     magenta       *     star             (none)  no line
%             y     yellow        s     square
%             k     black         d     diamond
%             w     white         v     triangle (down)
%                                 ^     triangle (up)
%                                 <     triangle (left)
%                                 >     triangle (right)
%                                 p     pentagram
%                                 h     hexagram


line.x = [dot1(1),dot2(1)];
line.y = [dot1(2),dot2(2)];
line.z = [dot1(3),dot2(3)];

if ischar(clr) || length(clr) == 3
    handle = plot3(line.x,line.y,line.z,STYLE,'color',clr,'linewidth',lw);
else
    colors = initialColorFnc(clr);
    if clr > 20;
        colors(clr,:) = rand(1,3);
    end
    handle = plot3(line.x,line.y,line.z,STYLE,'color',colors(clr,:) ,'linewidth',lw);
end
