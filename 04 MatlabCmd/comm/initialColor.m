% a function version is avalable for other functions to call
dispSection
disp('Initialization for color use');
disp('Works only for  less then 10 robots/agents');

colors = initialColorFnc(20);

disp('Use the color like this')
disp('plot(X,Y,"color",colors(i,:));');
dispSection
