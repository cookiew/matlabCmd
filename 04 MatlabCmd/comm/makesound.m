% *************************************************************************
%    File Name     : makesound.m
%    Author        : Dingjiang Zhou
%                    Boston University, Boston, 02215
%    Email         : zhoudingjiang@gmail.com
%    Create Time   : Sat, May. 25th, 2013. 04:42:09 PM
%    Last Modified :
%    Purpose       : just make some sound according to the cmd.
% INPUTS:
%     must be a string, the supported string right now are:
%       'start'
%       'end'
%       'warning'
%     will add more.
% *************************************************************************
function makesound(cmd)
    if strcmp(cmd,'start')
        iterations = 1;
        duration = 0.2;
        freq = 1200;
        mksnd(freq,duration,iterations);
    elseif strcmp(cmd,'end')
        iterations = 1;
        duration = 0.15;
        freq = 2000;
        mksnd(freq,duration,iterations);
        freq = 2000;
        mksnd(freq,duration,iterations);
    elseif strcmp(cmd,'warning')
        duration = .3;
        freq = 2100;
        iterations = 1;
        mksnd(freq,duration,iterations);
    elseif strcmp(cmd,'bad')
        duration = .15;
        freq = 3100;
        iterations = 1;
        mksnd(freq,duration,iterations);
        duration = .15;
        freq = 3100;
        iterations = 1;
        mksnd(freq,duration,iterations);
        duration = .15;
        freq = 3100;
        iterations = 1;
        mksnd(freq,duration,iterations);
    elseif strcmp(cmd,'good')
        duration = .35;
        freq = 2100;
        iterations = 1;
        mksnd(freq,duration,iterations);
    end

function mksnd(freq, d, iterations)
    for i = 1 : iterations
        sf = 20000;
        n = sf*d;             % number of samples
        s = (1:n)/sf;         % sound data preparation
        s = sin(2*pi*freq*s);   % sinusoidal modulation
        sound(s,sf);          % sound presentation
        pause(d + 0.0);       % waiting for sound end
    end
    
% end of file -------------------------------------------------------------



