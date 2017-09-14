


function plotRectangle2D(leftDownP, RightUpP, clr, lw, F)


% global axisRange;
x=[leftDownP(1),RightUpP(1),RightUpP(1),leftDownP(1),leftDownP(1)];
y=[leftDownP(2),leftDownP(2),RightUpP(2),RightUpP(2),leftDownP(2)];

if ischar(clr)
    plot(x,y,clr,'linewidth',lw);
elseif length(clr) == 3
    plot(x,y,'color',clr,'linewidth',lw);
else % length(clr) == 1
    colors  = initialColorFnc();
    if clr > 20
        colors(clr,:) = rand(1,3);
    end
    plot(x,y,'color',colors(clr,:),'linewidth',lw);
end
    

% fill the 
if F == 'f' || F == 'F'
    if ischar(clr)
        fill(x,y,clr);
    elseif length(clr) == 3
        fill(x,y,'color',clr);
    else % length(clr) == 1
        fill(x,y,'color',colors(clr,:));
    end
end



