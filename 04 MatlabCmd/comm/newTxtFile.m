function newTxtFile(fileName)

    f = fopen(fileName,'w');    % clear everything
    fclose(f);
end