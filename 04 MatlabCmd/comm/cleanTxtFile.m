function cleanTxtFile(fileName)

f = fopen(fileName,'wt');    % it will create one if not exists
fclose(f);
