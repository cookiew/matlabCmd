function append2TxtFile(fileName,contents)

f = fopen(fileName,'a');    % it will create one if not exists
fprintf(f,contents);
fclose(f);


% some notes for printing:
% \r == 0D == carriage return
% \n == 0A == line feed