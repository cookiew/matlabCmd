function abc = pointsPBisector(p1,p2,ctr)
% INPUT: ctr is a point that decides negative half plane
% OUTPUT: [a;b;c], a*x+b*y+c = 0
%         -- [a,b] is normalized
%         -- vector [a,b] points to the opposite side of the ctr (if given)

p1 = reshape(p1,2,1);
p2 = reshape(p2,2,1);
mid = (p1+p2)/2.0;
vec = normalize(p2-p1);
a = vec(1);
b = vec(2);
c = - mid(1)*vec(1) - mid(2)*vec(2);
abc = [a;b;c];
if nargin == 3
    if a*ctr(1)+b*ctr(2)+c > 0
        abc = -abc;
    end
end

end

function n = normalize(a)
    n = a/norm(a);
end