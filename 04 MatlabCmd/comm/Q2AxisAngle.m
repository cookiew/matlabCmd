function [n,alpha] = Q2AxisAngle(q)
q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
% q0^2+q1^2+q2^2+q3^2
% abs(q0^2+q1^2+q2^2+q3^2-1)
% norm check
if abs(q0^2+q1^2+q2^2+q3^2-1)>1e-2
    disp('quatrn2axisAngle: not a unit quaternion');
    n = [0;0;0];
    alpha = 5+i;
    return;
end

if abs(q0-1)<1e-10 % q0 = 1
    n = [0;0;0];
    alpha = 0;
else
    alpha = 2*acos(q0);
    sina = sin(1/2*alpha);
    n(1,1) = q1/sina;
    n(2,1) = q2/sina;
    n(3,1) = q3/sina;
end