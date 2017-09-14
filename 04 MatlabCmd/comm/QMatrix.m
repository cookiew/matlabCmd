%**************************************************************************
%   File Name     : QMatrix.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : Sat, May. 25th, 2015. 05:22:19 PM
%   Last Modified :  
%   Purpose       : the corresponding matrix of a quaterion
% refer to Pythagorean hodograph curves by Rida T. Farouki on page 66
%**************************************************************************
function A = QMatrix(q)
% convert the quaternion q into a matrix form
% q =[q(1);q(2);q(3);q(4)] = [q0;q1;q2;q3] = [q; \bold{q}]
a  = q(1);
ax = q(2);
ay = q(3);
az = q(4);

A = [a  -ax  -ay  -az;
     ax  a   -az   ay;
     ay  az   a   -ax;
     az -ay   ax   a];
  
% end of file --------  


