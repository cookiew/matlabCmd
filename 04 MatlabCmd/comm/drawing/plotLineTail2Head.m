%--------------------------------------------------------------------------
% version 1
% function plotLineTail2Head(Line)
% global axisRange;
% plot([Line.tail(1),Line.head(1)], [Line.tail(2),Line.head(2)], Line.c,'linewidth',Line.w);
% axis(axisRange);

% usage
% plot a line from tail to head
% LineB.tail=[3,4];      % the tail
% LineB.head=[7,10];     % the head
% LineB.w=1;             % the plot line width
% LineB.c='b';           % the plot color
% plotLineTail2Head(LineB)


%--------------------------------------------------------------------------
% version 2: Sep 21st, 2012

function plotLineTail2Head(Tail, Head, color, width)
% global axisRange;
plot([Tail(1),Head(1)], [Tail(2),Head(2)], color,'linewidth',width);
% axis(axisRange);





