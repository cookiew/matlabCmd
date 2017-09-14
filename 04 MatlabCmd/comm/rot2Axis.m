function [n,alpha] = rot2Axis(R)
% convert the rotation matrix to a quaternion
alpha = acos((R(1,1)+R(2,2)+R(3,3)-1)/2);
n=[0;0;0];
if alpha == 0
      % set as zeror
    return
elseif alpha == pi
    n12 = (1 + R(1,1))/2;
    n22 = (1 + R(2,2))/2;
    n32 = (1 + R(3,3))/2;
    n(1) = sqrt(n12); % always +
    n(2) = sign(R(1,2))*sqrt(n22);
    n(3) = sign(R(1,3))*sqrt(n32);
else
    n(1) = (R(3,2)-R(2,3))/(2*sin(alpha));
    n(2) = (R(1,3)-R(3,1))/(2*sin(alpha));
    n(3) = (R(2,1)-R(1,2))/(2*sin(alpha));
end