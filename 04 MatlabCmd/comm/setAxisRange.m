function xyzLimits = setAxisRange(dataIn, offset)

sizeData = size(dataIn);
if sizeData(1) < 4 % detect each row
    xyzLimits = zeros(1,sizeData(1)*2);
    for i = 1 : sizeData(1)
        xyzLimits(i*2-1) = min(dataIn(i,:)) - offset;
        xyzLimits(i*2)   = max(dataIn(i,:)) + offset;
    end
else
    xyzLimits = zeros(1,sizeData(2)*2);
    for i = 1 : sizeData(2)
        xyzLimits(i*2-1) = min(dataIn(:,i)) - offset;
        xyzLimits(i*2)   = max(dataIn(:,i)) + offset;
    end
end

% axisRange = [0,0,0,0]