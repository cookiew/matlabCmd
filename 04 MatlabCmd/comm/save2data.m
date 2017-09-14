% function save2data(string)
% save2data
fileName = [fileNameStr,'201606200811.mat'];

len = length(string);

tt = clock;
% year -------------------------------
str = num2str(tt(1));
fileName(len+1:len+4) = str; 
% month -------------------------------
str = num2str(tt(2));
if length(str) == 1
    fileName(len+5) = '0';
    fileName(len+6) = str;
elseif length(str) == 2
    fileName(len+5:len+6) = str;
else
    error('save2data: impossible');
end
% day -------------------------------
str = num2str(tt(3));
if length(str) == 1
    fileName(len+7) = '0';
    fileName(len+8) = str;
elseif length(str) == 2
    fileName(len+7:len+8) = str;
else
    error('save2data: impossible');
end
% hour -------------------------------
str = num2str(tt(4));
if length(str) == 1
    fileName(len+9) = '0';
    fileName(len+10) = str;
elseif length(str) == 2
    fileName(len+9:len+10) = str;
else
    error('save2data: impossible');
end
% minute -------------------------------
str = num2str(tt(5));
if length(str) == 1
    fileName(len+11) = '0';
    fileName(len+12) = str;
elseif length(str) == 2
    fileName(len+11:len+12) = str;
else
    error('save2data: impossible');
end
% % seocnd ------------------------------- not used -----------------
% tt(6)
% str = num2str(tt(6))
% if length(str) == 1
%     fileName(len+13) = '0';
%     fileName(len+14) = str;
% elseif length(str) == 2
%     fileName(len+13:len+14) = str;
% else
%     error('save2data: impossible');
% end

% ----------------------------------------------
save(fileName);




