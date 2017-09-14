
function handle = plotLineABC(ABC, clr, lw, axisRange) 

% plotLineABC([2,1,7],'m',1,[-10,10,-10,10]);
% Ax + By + C = 0;

if ABC(2)~= 0
    Tail(1)=axisRange(1);
    Head(1)=axisRange(2);
    Tail(2)=-(ABC(1)*Tail(1)+ABC(3))/ABC(2);
    Head(2)=-(ABC(1)*Head(1)+ABC(3))/ABC(2);
    if ischar(clr) || length(clr) == 3
        handle = plot([Tail(1),Head(1)],[Tail(2),Head(2)],'color',clr,'linewidth',lw);
    else
        colors = initialColorFnc(clr);
        if clr > 20
            colors(clr,:) = rand(1,3);
        end
        handle = plot([Tail(1),Head(1)],[Tail(2),Head(2)],'color',colors(clr,:),'linewidth',lw);
    end
elseif ABC(1)~= 0
    Tail(2)=axisRange(3);
    Head(2)=axisRange(4);
    Tail(1)=-(ABC(2)*Tail(2)+ABC(3))/ABC(1);
    Head(1)=-(ABC(2)*Head(2)+ABC(3))/ABC(1);
    if ischar(clr) || length(clr) == 3
        handle = plot([Tail(1),Head(1)],[Tail(2),Head(2)],'color',clr,'linewidth',lw);
    else
        colors = initialColorFnc(clr);
        if clr > 20
            colors(clr,:) = rand(1,3);
        end
        handle = plot([Tail(1),Head(1)],[Tail(2),Head(2)],'color',colors(clr,:),'linewidth',lw);
    end
elseif ABC(1)==0 && ABC(2)==0
    display('not a line.')
end
% axis(axisRange);
