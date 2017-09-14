% *****************************************************************************************
% File Name     : markPoint2D.m
% Author        : Dingjiang Zhou
%                 Boston University, Boston, 02215
% Email         : zdj@bu.edu zhoudingjiang@gmail.com
% Create Time   : Fri, Jul. 24th, 2015. 09:32:40 PM
% Last Modified : Fri, Jul. 24th, 2015. 09:32:40 PM
% Purpose       : to plot 2D lines 
% -----------------------------------------------------------------------------------------
% INPUTS
%     
% OUTPUTS
%        handle : plot handle for legend
% *****************************************************************************************
function handle = plotLine2D(line2D, clr, lw, STYLE)

% -----------------------------------------------------------------------------------------
% -----------------------------------------------------------------------------------------
% correction ----------
size1 = size(line2D);
size2 = size(size1);
if size2(2) == 3
    line2Dplot = zeros(size1(1),size1(3));
    for k = 1 : size1(3)
        line2Dplot(:,k) = line2D(:,1,k);
    end
else
    line2Dplot = line2D;
end

if nargin == 3
    handle = plotLine2Dsub1(line2Dplot, clr, lw);
elseif nargin == 4
    handle = plotLine2Dsub2(line2Dplot, clr, lw, STYLE);
else
    error('plotLine2D: nargin > 4 is not implemented.');
end




% -----------------------------------------------------------------------------------------
% -----------------------------------------------------------------------------------------
function handle = plotLine2Dsub1(line2Dplot, clr, lw)


% plotting ------------
if ischar(clr) || length(clr) == 3
    handle = plot(line2Dplot(1,:),line2Dplot(2,:),'Color',clr,'linewidth',lw); 
else
    colors = initialColorFnc(clr);
    if clr > 110
        colors(clr,:) = rand(1,3);
    end
    handle = plot(line2Dplot(1,:),line2Dplot(2,:),'Color',colors(clr,:),'linewidth',lw);
end


% -----------------------------------------------------------------------------------------
% -----------------------------------------------------------------------------------------
function handle = plotLine2Dsub2(line2Dplot, clr, lw, STYLE)


% plotting ------------
if ischar(clr)  || length(clr) == 3
    handle = plot(line2Dplot(1,:),line2Dplot(2,:),STYLE,'Color',clr,'linewidth',lw); 
else
    colors = initialColorFnc(clr);
    if clr > 110
        colors(clr,:) = rand(1,3);
    end
    handle = plot(line2Dplot(1,:),line2Dplot(2,:),STYLE,'Color',colors(clr,:),'linewidth',lw);
end

