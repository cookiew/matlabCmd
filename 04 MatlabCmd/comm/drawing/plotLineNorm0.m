function plotLineNorm0(NormV, color, width) % plotLineABC([2,1,7],'m',1);
global axisRange;
ABC(1)=NormV(1);ABC(2)=NormV(2);ABC(3)=0;
plotLineABC(ABC,color,width);
axis(axisRange);