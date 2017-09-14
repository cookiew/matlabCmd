function result = isInsideHull(pt, abc)
%Judge if a point is inside the convex hull
%   Input:
%       pt: point of interest (2x1)
%       abc: hull edges (3xN), ax + by + c = 0 is the line, < 0 is
%       considered to be inside
%   Output:
%       result: true or false. Return true if the point is inside or ON THE
%       PERIMETER of the perimeter

nEdge = size(abc,2);
test = 0;

for i = 1:nEdge
    if(abc(:,i)'*[pt;1] > 0)
        test = test + abc(:,i)'*[pt;1];
    end
end 

if (test <= 1e-7) % for numerical issue
    result = true;
else
    result = false;
end
 