% this function only works well for R2014b or lower verion
function save2pdfOld(figureNo, folder, pdfname, size, fontSize)
dispSection
if folder == '0'
    disp(['Saving figure ',num2str(figureNo),' to default folder.']);
    disp('~/Dropbox/work/matlab/figures/');
else
    disp(['Saving figure ',num2str(figureNo),' to folder: ',folder]);
end
disp(['as pdf file: ',pdfname,'.pdf.']);
disp('Thanks for your patient....');

if folder == '0' % use default
    FOLDER = '~/Dropbox/work/matlab/figures/';
else
    FOLDER = folder;
end 

figure(figureNo);
set(gca,'fontSize',fontSize); % set the x,y tickers
% axes('FontSize', font)
size1 = size(1);
size2 = size(2);
set(gcf, 'PaperPosition', [0 0 size1 size2]);
set(gcf, 'PaperSize', [size1 size2]); 
% set(gca,'fontSize',font);

% for one figure (or the last subplot) only -----------------------------------------------
% handle = get(gca,'xlabel');
% set(handle,'fontSize',fontSize);
% handle = get(gca,'ylabel');
% set(handle,'fontSize',fontSize);
% handle = get(gca,'zlabel'); 
% set(handle,'fontSize',fontSize);
% handle = get(gca,'title');
% set(handle,'fontSize',fontSize);
% handle = findobj(gcf,'Type','axes','Tag','legend'); % legend?
% set(handle,'fontSize',fontSize);

% for all subplots ------------------------------------------------------------------------
axesHandles = findall(0,'type','axes');
set(axesHandles,'fontSize',fontSize);   % axes stickers
labelHandles = findall(findobj(gcf),'Type','text'); % xlabel, ylabel, title
set(labelHandles,'fontSize',fontSize);

% save to a pdf file ----------------------------------------------------------------------
saveas(figureNo,[FOLDER,pdfname,'.pdf']);

disp(['figure ',num2str(figureNo),' saved.']);
dispSection
% end of file -----------------------------------------------------------------------------


