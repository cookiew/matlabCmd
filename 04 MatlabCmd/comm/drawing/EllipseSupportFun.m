ccc;
global axisRange;       % this is important
axisRange=[-15,15,-10,10];

% have a figure
figure(1);
axis(axisRange);
hold on;
axis equal;

% plot the axis
plotXYAxis(axisRange*0.9);

% plot a ellipse    x^2/a^2 + y^2/b^2 = 1
EllipseA.center=[0,0];     
EllipseA.r=[10,6];   % the x-axis and y-axis
EllipseA.w=2;        % the plot line width
EllipseA.c='r';      % the plot color
plotEllipse(EllipseA)

angle=45;
angle=angle/180*pi;
X=EllipseA.r(1)*cos(angle);
Y=EllipseA.r(2)*sin(angle);
Dot=[X,Y];          % the dot to be plotted
plotDot(Dot,'*');

TanLine.a=EllipseA.r(2)^2*X;
TanLine.b=EllipseA.r(1)^2*Y;
TanLine.c=-EllipseA.r(1)^2*EllipseA.r(2)^2;
TanLine.cl='g';
TanLine.w=1;
plotLineABC(TanLine)

Origin=[0,0];
plotDotPerp2LineABC(Origin, TanLine, 'b', 1)


ht1=text(EllipseA.r(1)+1,-0.5,'a');
set(ht1,'HorizontalAlignment','center')

ht2=text(0.5,EllipseA.r(2)+1,'b');
set(ht2,'HorizontalAlignment','center')

ht3=text(X+1,Y+1,'Tangent Line');
set(ht3,'HorizontalAlignment','left')
set(ht3,'fontsize',7)
