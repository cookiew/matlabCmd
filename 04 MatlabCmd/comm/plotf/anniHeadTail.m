function [head,tail,plotK] = anniHeadTail(totalSteps, tailLen, k)
if k <= tailLen
    head  = k;
    tail  = 1;
    plotK = k;
elseif k <= totalSteps
    head  = k;
    tail  = k - tailLen + 1;
    plotK = k;
else
    head  = totalSteps;
    tail  = k - tailLen;
    plotK = totalSteps;
end

