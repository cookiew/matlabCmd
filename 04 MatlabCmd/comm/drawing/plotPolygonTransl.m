
function plotPolygonTransl(Polygon, transl, color, width, fillorNo, labelX, labelY)
global axisRange;
sizeP=size(Polygon);
lengthP=sizeP(1);
if Polygon(1,1)~=Polygon(lengthP,1) | Polygon(1,2)~=Polygon(lengthP,2)
    Polygon(lengthP+1,1)=Polygon(1,1);
    Polygon(lengthP+1,2)=Polygon(1,2);
end
for i=1:lengthP+1
    Polygon(i,1)=Polygon(i,1)+transl(1);
    Polygon(i,2)=Polygon(i,2)+transl(2);
end
plot(Polygon(:,1),Polygon(:,2),color,'linewidth',width)
xlabel(labelX);ylabel(labelY);
if strcmp(fillorNo,'fill')==1
    fill(Polygon(:,1),Polygon(:,2),color)
end
axis(axisRange);



% plot a polygon
% PolygonG.x=[1 4 6 3 2];
% PolygonG.y=[2 3 5 1 2];
% PolygonG.c='g';
% PolygonG.w=2;
% PolygonG.fill=0;
% plotPolygon(PolygonG);
