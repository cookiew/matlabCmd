function plotPeriod(timeRec, LABEL, plotSteps, lw)   
% the timeRec is a sequnce of time, unit: ms or s


clkP = zeros(1,plotSteps-10+1);
for i = 10 : plotSteps
    clkP(i-9) = timeRec(i)-timeRec(i-1);
end
if LABEL == 'm' || LABEL == 'M' % millisecond
    dt = mean(clkP)/1000; % convert to  second
elseif LABEL == 's' || LABEL == 'S'
    dt = mean(clkP);
end

plot(dt*(1:length(clkP)),clkP(1:length(clkP)),'b','linewidth',lw);
XYlmt = decideAxisRange(0:dt*length(clkP),clkP,0.1);
if XYlmt(4) - XYlmt(3) <= 0.1
    XYlmt(3) = XYlmt(3) - 1;
    XYlmt(4) = XYlmt(4) + 1;
end
axis(XYlmt);
title('System Cycles (ms)');
xlabel('Time (s)'); box on;
str = ['Mean Period = ',num2str(mean(clkP)),'ms.'];
legend(str);
    

% the mean and variance
disp(['Period mean is ',num2str(mean(clkP)), ' ms']);
disp(['Period variance is ', num2str(variance(clkP)), ' ms^2']);
% max and min
disp(['Minimum period is ', num2str(min(clkP)), ' ms']);
disp(['Maximum period is ', num2str(max(clkP)), ' ms']);
