function rotatingFigCreateMovie(figNo,time, movieName)
time = fix(time * 20/25);   % some fix

figure(figNo);
z = 0.6;
r = sqrt(5);
pauseTime = 0.05;
rotatingTotal = time/pauseTime;
rotatingCount = 0;
% create the avi file
aviobj = avifile(movieName);
% rotating
for i = 0 : 0.01 : 200*pi
   x = cos(i)*r;
   y = sin(i)*r;
   view([x y z]);
   pause(pauseTime);
   % movie
   F = getframe(figNo);
   aviobj = addframe(aviobj,F);
   % end movie
   rotatingCount = rotatingCount + 1;
   if rotatingCount > rotatingTotal;
       break;
   end
end
aviobj = close(aviobj);