function handle = plotCircle2Dstyle(center, radius, dAngle, STYLE, clr, lw)

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


t = 0 : dAngle/180*pi : 2*pi;
line.x = radius*cos(t) + center(1);
line.y = radius*sin(t) + center(2);


if ischar(clr) || length(clr) == 3
    handle = plot(line.x,line.y,STYLE,'color',clr,'linewidth',lw);
else
    colors = initialColorFnc(clr);
    if clr > 20;
        colors(clr,:) = rand(1,3);
    end
    handle = plot(line.x,line.y,STYLE,'color',colors(clr,:) ,'linewidth',lw);
end