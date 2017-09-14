function rotatingFig(figNo,time)
time = fix(time * 20/25);   % some fix

figure(figNo);
z = 0.6;
r = sqrt(5);
pauseTime = 0.05;
rotatingTotal = time/pauseTime;
rotatingCount = 0;

% rotating
for i = 0 : 0.01 : 200*pi
   x = cos(i)*r;
   y = sin(i)*r;
   view([x y z]);
   pause(pauseTime);
   rotatingCount = rotatingCount + 1;
   if rotatingCount > rotatingTotal;
       break;
   end
end