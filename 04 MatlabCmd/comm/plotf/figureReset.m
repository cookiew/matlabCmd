function figureReset(figNo, XLABEL, YLABEL, TITLE, axisRange, view3D, YN, fig)
figure(figNo);
clf
hold on;
box on;
axis equal;
% set(gca,'YDir','reverse');
% set(gca,'ZDir','reverse');
title(TITLE);
axis(axisRange);
xlabel(XLABEL);
ylabel(YLABEL);

if view3D == 1
    view([-83,10]);
elseif view3D == 2
    view([-82,58]);
elseif view3D == 3
    view([-85,34]);
elseif view3D == 4
    view([-157,16]);
elseif view3D == 0
    view([-90,90]);
elseif view3D == -1
    view([0,90]);
end
if YN == 'y' || YN == 'Y'
    plotGlblSysZdown(0.2, 0, 2);
end


% stick and font size

axesHandles = findall(0,'type','axes');
set(axesHandles,'fontSize',fig.stickSize);   % axes stickers
labelHandles = findall(findobj(gcf),'Type','text'); % xlabel, ylabel, title
set(labelHandles,'fontSize',fig.fontSize);
