%**************************************************************************
%   File Name     : rot2eulerZYX.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : 
%   Last Modified : 
%   Purpose       : rotation matrix to euler angles in ZYX sequence, not
%                   considered the singularity.
%**************************************************************************
function euler = rot2eulerZYX(R)
% input:
% R, the rotation matrix
% output:
% the euler angles in the ZYX form, as a column vector

% rot('z',psi)*rot('y',the)*rot('x',phi)
%  
% ans =
% [ cos(psi)*cos(the), cos(psi)*sin(phi)*sin(the) - cos(phi)*sin(psi), sin(phi)*sin(psi) + cos(phi)*cos(psi)*sin(the)]
% [ cos(the)*sin(psi), cos(phi)*cos(psi) + sin(phi)*sin(psi)*sin(the), cos(phi)*sin(psi)*sin(the) - cos(psi)*sin(phi)]
% [         -sin(the),                              cos(the)*sin(phi),                              cos(phi)*cos(the)]
%  


euler(1,1) = atan2(R(3,2),R(3,3));      % phi
euler(2,1) = asin(-R(3,1));             % theta
euler(3,1) = atan2(R(2,1),R(1,1));      % psi


% R = [1-2*(q22+q32)   2*(q1q2-q0q3)   2*(q0q2+q1q3);
%      2*(q1q2+q0q3)   1-2*(q12+q32)   2*(q2q3-q0q1);
%      2*(q1q3-q0q2)   2*(q0q1+q2q3)   1-2*(q12+q22)];


% end of file -------------------------------------------------------------
