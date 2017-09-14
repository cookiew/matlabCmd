%**************************************************************************
%   File Name     : rotZYX.m
%   Author        : Dingjiang Zhou
%                   Boston University, Boston, 02215
%   Create Time   :  
%   Last Modified :  
%   Purpose       : rotation matrix from the euler angles, where the euler
%                   angels are in the ZYX sequence.
%
% INPUTS:
%     euler: 3X1 or 1X3 vector, as roll/phi, pitch/the, yaw/psi in radian.
%**************************************************************************
function R = rotZYX(euler)

phi = euler(1);
the = euler(2);
psi = euler(3);

% to save some calculation
Cpsi = cos(psi);
Spsi = sin(psi);
Cthe = cos(the);
Sthe = sin(the);
Cphi = cos(phi);
Sphi = sin(phi);
CpsiSphi = Cpsi*Sphi;
CphiCpsi = Cphi*Cpsi;
SphiSpsi = Sphi*Spsi;
CphiSpsi = Cphi*Spsi;

% the output
R = ... 
[ Cpsi*Cthe, CpsiSphi*Sthe - CphiSpsi, SphiSpsi + CphiCpsi*Sthe;
  Cthe*Spsi, CphiCpsi + SphiSpsi*Sthe, CphiSpsi*Sthe - CpsiSphi;
      -Sthe,                Cthe*Sphi,               Cphi*Cthe];
 