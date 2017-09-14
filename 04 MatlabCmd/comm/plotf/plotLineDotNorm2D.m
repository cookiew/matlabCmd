function handle = plotLineDotNorm2D(dot, normVec, axisRange, clr, lw)

handle = plotLineDotVec2D(dot,[normVec(2);-normVec(1)],axisRange,clr,lw);