%**************************************************************************
%   File Name     : QConj.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : Sat, May. 25th, 2015. 05:22:19 PM
%   Last Modified :  
%   Purpose       : find conjugate of a quaterion qin
%**************************************************************************
function qout =  QConj(qin)

qout(1,1) =  qin(1);
qout(2,1) = -qin(2);
qout(3,1) = -qin(3);
qout(4,1) = -qin(4);