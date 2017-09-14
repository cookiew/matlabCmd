%**************************************************************************
%   File Name     : newfigure.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : Mon, Aug. 24th, 2015. 03:49:45 PM
%   Last Modified :
%   Purpose       : a function to have a new figure, no need to inducate
%                   the figure number.
% INPUTS:
%           param : 'h', 'hg', 'gha', 'ghaa', etc.
%           scale : plot the axis if not 0 or empty.
%         VERSION : matalb version, refer to code for detail
% OUTPUT:
%       fighandle : the number of the figure.
%**************************************************************************
function fighandle = newfigure(param, fig)

hands   = get(0,'Children');    % locate fall open figure handles
hands   = sort(hands);           % sort figure handles
numfigs = size(hands,1);         % number of open figures

if fig.VERSION == 2013
    fighandle = figure(numfigs+1);   % R2013b: figure() returns a number
elseif fig.VERSION == 2014
    fighandle = figure(numfigs+1);   % R2013b: figure() returns a number
elseif fig.VERSION == 2015
    a = figure(numfigs+1);          % R2015a: figure() returns a structure!
    fighandle = a.Number;
else
    error('newfigure() : refer to figure() and find out the output');
end

if param == ' '
    ;
elseif strcmp(param, 'h') == 1
    hold on;
elseif strcmp(param, 'ha') == 1 || strcmp(param,'ah') == 1
    hold on;
    axis equal;
elseif strcmp(param, 'hb') == 1 || strcmp(param,'bh') == 1
    hold on;
    box on;
elseif strcmp(param, 'bha') == 1 || strcmp(param, 'hab') == 1 || strcmp(param,'ahb') == 1 || strcmp(param,'hba') == 1
    hold on;
    axis equal;
    box on;
elseif strcmp(param, 'hg') == 1 || strcmp(param, 'gh') == 1
    hold on;
    grid on;
elseif strcmp(param, 'hga') == 1 || strcmp(param, 'gha') == 1
    grid on;
    hold on;
    axis equal;
elseif strcmp(param, 'hgb') == 1 || strcmp(param, 'ghb') == 1
    grid on;
    hold on;
    box on;
elseif strcmp(param, 'hgab') == 1 || strcmp(param, 'ghab') == 1
    grid on;
    hold on;
    axis equal;
    box on;
elseif strcmp(param, 'ghaa') == 1
    grid on;
    hold on;
    axis equal;
    % plot the xyz axis
    plot3([0,fig.scale],[0,0],[0,0],'r','linewidth',2');
    plot3([0,0],[0,fig.scale],[0,0],'g','linewidth',2');
    plot3([0,0],[0,0],[0,fig.scale],'b','linewidth',2');
else
    disp('newfigure.m: illegal parameters.');
end


axesHandles = findall(0,'type','axes');
set(axesHandles,'fontSize',fig.stickSize);   % axes stickers
labelHandles = findall(findobj(gcf),'Type','text'); % xlabel, ylabel, title
set(labelHandles,'fontSize',fig.fontSize);



% end of file -----------------------------------------------------------------------------


