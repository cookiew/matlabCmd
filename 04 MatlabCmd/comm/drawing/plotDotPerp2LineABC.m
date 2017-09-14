function plotDotPerp2LineABC(Dot, Line, color, width)
global axisRange;
x0=Dot(1);
y0=Dot(2);
a=Line.a;
b=Line.b;
c=Line.c;
A=[b -a; a b];
B=[b*x0-a*y0;-c];
Head=inv(A)*B;
plot([x0,Head(1)],[y0,Head(2)],color,'linewidth',width);


axis(axisRange);