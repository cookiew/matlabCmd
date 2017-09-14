%**************************************************************************
%   File Name     : rotByQ.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   : Sat, May. 25th, 2015. 05:22:19 PM
%   Last Modified :  
%   Purpose       : rotation of vector vin by quaternion q

% refer to Pythagorean hodograph curves by Rida T.Farouki on page 67
%**************************************************************************
function vout = rotByQ(q, vin)

% rotation of vector vin, through angle theta, about axis nhat, where theta and nhat 
% defines the quaternion
% q = (cos(1/2*theta),sin(1/2*theta)*nhat)

% pure quaternion of vector 
Vin = [0;vin];

% conjugate of quarternion
qc = QConj(q);

% pur quaternion of the output vector
Vout = QMulti3(q,Vin,qc);

% output 
vout = Vout(2:4);