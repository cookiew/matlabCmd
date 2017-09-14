%**************************************************************************
%   File Name     : Q2R.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : Sat, May. 25th, 2015. 05:22:19 PM
%   Last Modified :  
%   Purpose       : convert the quaternion expression into the rotation
%                   matrix.
%**************************************************************************
function R = Q2R(q)
q0 = q(1); % w
q1 = q(2); % x
q2 = q(3); % 
q3 = q(4);

% to save some calculation
q1q2 = q1*q2;
q1q3 = q1*q3;
q0q2 = q0*q2;
q0q3 = q0*q3;
q0q1 = q0*q1;
q2q3 = q2*q3;
q02 = q0^2;
q12 = q1^2;
q22 = q2^2;
q32 = q3^2;

% quaternion check
% if abs(q02+q12+q22+q32-1)>1e-3
%     disp('quatrn2rot: not a unit quaternion.');
%     R = eye(3);
%     return
% end

R = [1-2*(q22+q32)   2*(q1q2-q0q3)   2*(q0q2+q1q3);
     2*(q1q2+q0q3)   1-2*(q12+q32)   2*(q2q3-q0q1);
     2*(q1q3-q0q2)   2*(q0q1+q2q3)   1-2*(q12+q22)];
 
% end of file -------------------------------------------------------------
