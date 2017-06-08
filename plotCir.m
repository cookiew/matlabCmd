function plotCir(center, radius, clr, lw)
pos = [center(1)-radius, center(2)-radius, 2*radius, 2*radius];
rectangle('Position',pos,'Curvature',[1,1],'FaceColor',clr,'EdgeColor',clr,'LineWidth',lw)
end