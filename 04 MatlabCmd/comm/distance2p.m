function d = distance2p(pointA, pointB)
% no argument check
sizeA = length(pointA);
d = 0;
for i = 1 : sizeA
    d  = d + (pointA(i)-pointB(i))^2;
end
d = sqrt(d);