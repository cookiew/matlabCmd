function plotMtlbSysAxes(axisScale, arrowScale, lw)

plot3([0,1*axisScale],[0,0],[0,0],'r','linewidth',lw)
plot3([0,0],[0,1*axisScale],[0,0],'g','linewidth',lw)
plot3([0,0],[0,0],[0,1*axisScale],'b','linewidth',lw)

% plot the arrow
plotVec3D([0;0;0],[1;0;0]*axisScale,arrowScale,'r',lw)
plotVec3D([0;0;0],[0;1;0]*axisScale,arrowScale,'g',lw)
plotVec3D([0;0;0],[0;0;1]*axisScale,arrowScale,'b',lw)