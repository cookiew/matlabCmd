%**************************************************************************
%   File Name     : R2axisAngle.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : 
%   Last Modified : 
%   Purpose       : from the rotation matrix to axis and an angle, inverse of rotAxis.m
%
% NOTE: the solution can be multiple, but in this function, we use a inverse of rotAxis.m,
% so we get a unique solution
%**************************************************************************
function [axis,angle] = R2axisAngle(R)

% THIS FUNCTION HAS SINGULARITY

% rotation axis-angle representation, method 1, K.S. Fu p21
% R = [N(1)^2*(1-cosa)+cosa        , N(1)*N(2)*(1-cosa)-N(3)*sina,  N(1)*N(3)*(1-cosa)+N(2)*sina;
%      N(1)*N(2)*(1-cosa)+N(3)*sina, N(2)^2*(1-cosa)+cosa        ,  N(2)*N(3)*(1-cosa)-N(1)*sina;
%      N(1)*N(3)*(1-cosa)-N(2)*sina, N(2)*N(3)*(1-cosa)+N(1)*sina,  N(3)^2*(1-cosa)+cosa       ];

% R(1,1)+R(2,2)+R(3,3) = (1-cos(alpha)) + 3*cos(alpha) = 1 + 2*cos(alpha);
% ---> alpha = acos((R(1,1)+R(2,2)+R(3,3)-1)/2)
% R(2,1) - R(1,2) = 2*N(3)*sin(alpha); ---> N(3)
% R(1,3) - R(3,1) = 2*N(2)*sin(alpha); ---> N(2)
% R(3,2) - R(2,3) = 2*N(1)*sin(alpha); ---> N(1)
% but if alpha = 0 (since R = eye(3), then alpha = acos(1)), then 
% q = [1;0;0;0]
% R
% 
angle = acos((R(1,1)+R(2,2)+R(3,3)-1)/2);
% sin(angle)
% R(3,2) - R(2,3)
axis = [0;0;0];
axis(1) = (R(3,2) - R(2,3))/2/sin(angle);
axis(2) = (R(1,3) - R(3,1))/2/sin(angle);
axis(3) = (R(2,1) - R(1,2))/2/sin(angle);
