function abc = pointToLine(p1,p2,ctr)
% INPUT: ctr is a point that decides positive half plane
% OUTPUT: [a;b;c], a*x+b*y+c = 0
%         -- [a,b] is normalized
%         -- [a,b] points to the opposite side of the ctr (if given)

if norm(p1(1)-p2(1))<1e-3
    b = 0; a = -1; c = p1(1);
else
    bb = 1; aa = -(p1(2)-p2(2))/(p1(1) - p2(1)); 
    a = aa/norm([aa,bb]); b = bb/norm([aa,bb]); c = -a*p1(1)-b*p1(2);
end
abc = [a;b;c];
if nargin == 3
    if a*ctr(1)+b*ctr(2)+c > 0
        abc = -abc;
    end
end
end

