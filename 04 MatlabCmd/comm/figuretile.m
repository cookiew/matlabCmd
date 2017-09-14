% -------------------------------------------------------------------------
% Author    : Dingjiang Zhou <zhoudingjiang@gmail.com>
%             Boston University, Boston, 02215
% Created   : Fri. Feb 22th, 2013, 09:02:11 PM

% Used in   : to tile a single figure.

% Thanks to : Charles Plum  <cplum@nichols.com>
%             Nichols Research Corp.
%             70 Westview Street, Kilnbrook IV, Lexington, MA 02173
%             Tel: (781) 862-9400, Fax: (781) 862-9485
% -------------------------------------------------------------------------
function figuretile(figNo, width, height)


maxpos  = get(0,'screensize');
hands   = get(0,'Children');     % locate fall open figure handles
hands   = sort(hands);           % sort figure handles

if (maxpos(3) == 3840) && (maxpos(4) == 1080)
    Xorigin = 20;
    Yorigin = 20;
elseif (maxpos(3) == 3520) && (maxpos(4) == 1080)   % done
    Xorigin = 1620;
    Yorigin = 20;
elseif (maxpos(3) == 1600) && (maxpos(4) == 900)   % done
    Xorigin = 500;
    Yorigin = 20;
else
    disp(['tilefigure: not designed for maxpos(3) = ',num2str(maxpos(3)),...
        ', maxpos(4) = ',num2str(maxpos(4)),'.']);
end

ypos = Yorigin + 25;
xpos = Xorigin + 25;
% move figure
figure(hands(figNo))
set(hands(figNo),'Position',[xpos, ypos, width, height]);

return


% end of file -----------------------------------------------------------------------------