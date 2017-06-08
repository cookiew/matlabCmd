function [pt, i] = lineIntersect(abc1, abc2)
% given coefficients of two lines 
% return if they intersect and intersection point if they intersect

pt = [];
i = 0;    
if abs(abc1(1)*abc2(2) - abc2(1)*abc1(2)) > 1e-5   % not parallel
    i = 1;
    abc1 = reshape(abc1, 3,1);
    abc2 = reshape(abc2, 3,1);
    A = [abc1(1:2)'; abc2(1:2)'];
    b = [-abc1(3); -abc2(3)];
    pt = A\b;
end
end