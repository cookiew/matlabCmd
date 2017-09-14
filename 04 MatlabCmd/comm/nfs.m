% a function from newfigure.m
function Num = nfs()            % number of figures
hands = get (0,'Children');     % locate fall open figure handles
hands = sort(hands);            % sort figure handles
Num = size(hands,1);            % number of existing figures