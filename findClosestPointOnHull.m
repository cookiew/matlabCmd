function [result, p] = findClosestPointOnHull(pt, hull)
% inputs:
%       hull: vertices of convex hull
%       pt: 2-d point of interest
% output: 
%       result: if the point is inside hull
%       p : closest point on hull edges to p of interest

p = zeros(2,1);
% if point inside hull
hull_edges = vtcToEdges(hull);
result = isInsideHull(pt,hull_edges);

% find closest point
n = size(hull,2)- 1;   % number of edges
min_d = 1e6;
for i = 1:n
    points = zeros(2,3);
    points(:,1:2) = hull(:,i:i+1);
    dist = zeros(1,3); dist(3) = 1e6;
    dist(1) = norm(pt-hull(:,i));
    dist(2) = norm(pt-hull(:,i+1));   % distances to end points

    abc = pointToLine(hull(:,i),hull(:,i+1));  
    % compute intersection
    Amat = [abc(1) abc(2);abc(2) -abc(1)];
    bvec = [-abc(3);abc(2)*pt(1)-abc(1)*pt(2)];
    points(:,3) = Amat\bvec;
    if points(1,3) <= max(hull(1,i:i+1))+1e-7 && points(1,3) >= min(hull(1,i:i+1))-1e-7
        dist(3) = abs(abc(1)*pt(1) + abc(2)*pt(2) + abc(3))/norm(abc(1:2));
    end
    [dmin, I] = min(dist);
    if dmin < min_d
        min_d = dmin;
        p = points(:,I);
    end
end
end