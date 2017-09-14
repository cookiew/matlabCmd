% this program shows the multiplication of three quaternions based on the
% the multiplication of two quaternions

% note that the multiplication of the quaternions is NOT commutative

function multiq = QMulti3(A,B,C) % A*B*C, B can be a vector

if length(B) == 3
    B = [0;B(1);B(2);B(3)];
end
multiq = QMulti2(QMulti2(A,B),C);