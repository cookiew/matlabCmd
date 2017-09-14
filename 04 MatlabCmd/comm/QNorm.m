function Norm = QNorm(q)   % q is a quaternion
% Norm=q(1)^2+q(2)^2+q(3)^2+q(4)^2; % first test the defination in the book

Norm = sqrt(q(1)^2+q(2)^2+q(3)^2+q(4)^2);

% for unit quaternion, the norm must be 1, no need to have this function.
