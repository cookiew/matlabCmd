%--------------------------------------------------------------------------
% version 1
% function plotLineDotDirVec(Line)
% global axisRange;
% vec=Line.DirVec/sqrt((Line.DirVec(1))^2+(Line.DirVec(2))^2);    % unit
% length=Line.length/2;
% plot([Line.dot(1),Line.dot(1)+length*vec(1)], [Line.dot(2),Line.dot(2)+length*vec(2)], Line.c,'linewidth',Line.w);
% if Line.dDir==1
%     plot([Line.dot(1),Line.dot(1)-length*vec(1)], [Line.dot(2),Line.dot(2)-length*vec(2)], Line.c,'linewidth',Line.w);
% end
% axis(axisRange);

% usage
% LineD.dot=[4,5];
% LineD.DirVec=[-1,2];
% LineD.w=2;
% LineD.c='b';
% LineD.length=20;
% LineD.dDir=1;   % double direction, "1" for yes
% plotLineDotDirVec(LineD);

%--------------------------------------------------------------------------
% version 1
function plotLineDotDirVec(Dot, DirVec, Length, doubleDir, color, width)
% global axisRange;
vec=DirVec/sqrt((DirVec(1))^2+(DirVec(2))^2);    % unit
length=Length/2;
plot([Dot(1),Dot(1)+length*vec(1)], [Dot(2),Dot(2)+length*vec(2)], color,'linewidth',width);
if doubleDir==1
    plot([Dot(1),Dot(1)-length*vec(1)], [Dot(2),Dot(2)-length*vec(2)], color,'linewidth',width);
end
axis(axisRange);
