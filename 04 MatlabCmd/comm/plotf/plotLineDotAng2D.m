function handle = plotLineDotAng2D(dot, ang, axisRange, clr, lw)
 
handle = plotLineDotVec2D(dot,[cos(ang);sin(ang)],axisRange,clr,lw);