%**************************************************************************
%   File Name     : save2pdf.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : Tue, Aug. 11th, 2015. 04:26:01 PM
%   Last Modified : Fri, Mar. 11th, 2016. 09:11:21 PM
%   Purpose       : save figures into pdf file
%**************************************************************************
function save2pdf(figureNo, folder, pdfname, size, fig)
dispSection
if folder == '0'
    disp(['Saving figure ',num2str(figureNo),' to default folder.']);
    disp('~');
else
    disp(['Saving figure ',num2str(figureNo),' to folder: ',folder]);
end
disp(['as a pdf file: ',pdfname,'.pdf.']);
disp('Thanks for your patience ....');

if folder == '0' % use default
    FOLDER = '~/';
else
    FOLDER = folder;
end  

figure(figureNo);
% for all subplots ------------------------------------------------------------------------
axesHandles = findall(0,'type','axes');
set(axesHandles,'fontSize',fig.stickSize);   % axes stickers
labelHandles = findall(findobj(gcf),'Type','text'); % xlabel, ylabel, title
set(labelHandles,'fontSize',fig.fontSize);

% save to a pdf file ---------------------------------------------------------------------
set(gcf, 'PaperPosition', [0 0 size(1) size(2)]);
set(gcf, 'PaperSize', [size(1) size(2)]);
saveas(gcf, [FOLDER,pdfname], 'pdf');

% -----------------------------------------------------------------------------------------
disp(['figure ',num2str(figureNo),' is saved.']);

dispSection
% end of file -----------------------------------------------------------------------------


