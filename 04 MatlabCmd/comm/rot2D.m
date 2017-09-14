%**************************************************************************
%   File Name     : rot2D.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : 2015/08/31
%   Last Modified :
%   Purpose       : basic rotation matrix.
%**************************************************************************
function  R = rot2D(angle)

cosAngle = cos(angle);
sinAngle = sin(angle);
R = [cosAngle  -sinAngle;
     sinAngle   cosAngle];





% end of file -------------------------------------------------------------