function [vector] = invTensor(x)
% check if x is skew-symmetric
% if abs(x(2,3)+x(3,2))>1e-4 | abs(x(1,3)+x(3,1))>1e-4 | abs(x(1,2)+x(2,1))>1e-4
%     disp('The matrix is not skew-symmetric.');
%     return;
% end 
% tildematrix=[   0    -x(3)   x(2);
%                 x(3)  0  	  -x(1);
%                -x(2)  x(1)   0   ];
           
vector(1,1) = x(3,2);
vector(2,1) = x(1,3);
vector(3,1) = x(2,1);