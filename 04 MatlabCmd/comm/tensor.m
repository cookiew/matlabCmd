% the same with the function mytilde.m
% the name "tensor" is from wiki: Angular velocity
function [tildematrix] = tensor(x)
tildematrix = [   0    -x(3)   x(2);
                  x(3)  0  	  -x(1);
                 -x(2)  x(1)   0   ];