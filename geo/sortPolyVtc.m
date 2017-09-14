function points = sortPolyVtc(ver)
% order convex polygon vertices
% the point with largest x coordinate/ (y coordinate) is the first, order
% the rest of them counterclock-wise
% closed 

% the ver may already sorted

if norm(ver(:,1) - ver(:,end)) < 1e-6
    ver(:,end) = [];
end                     % not closed

n = size(ver,2);
points = zeros(2,n+1); angles = zeros(1,n);   % preallocate
mid = mean(ver,2);

for i = 1:n
    angles(i) = atan2(ver(2,i)-mid(2), ver(1,i)-mid(1));
end            


[vmaxx,idx] = max(ver(1,:));
mul_idx = find(ver(1,:)==vmaxx);
if length(mul_idx) ~= 1
    [~,idy] = max(ver(2,mul_idx));
    id = mul_idx(idy);
else
    id = idx;
end            % index of first vertices

angles = wrapTo2Pi(angles - angles(id));
[~,I] = sort(angles,'ascend');
points(:,1:n) = ver(:,I);
points(:,end) = points(:,1);
end