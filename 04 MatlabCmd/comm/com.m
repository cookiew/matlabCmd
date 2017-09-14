% combination C_n^i, or {\scriptstyle {n \choose i}}
function ret = com(n,i)
% parameter check
if ~(n>=2)
    if n == 0 && i == 0
        ret = 1;
        return;
    elseif n == 1 && i == 0
        ret = 1;
        return;
    elseif n == 1 && i == 1
        ret = 1;
        return;
    else
        disp('com.m: n should >= 2.')
        ret = -1;
        return;
    end
end
if (i<0) || (i>n)
    disp('com.m: i should >=0 and <= n.');
    ret = -1;
    return;
end
% case 0: 
if i ==0;
    ret = 1;
    return;
end
% case 1:
if i == 1
    ret = n;
    return;
end
% case 2:
if i == n
    ret = 1;
    return;
end
% case 3:
% 1 < i < n
if i > fix(n/2)
    i = n - i;
end
num = n;
den = 1;

for j = 1 : i-1
    num = num * (n-j);
end
for j = 1 : i 
    den = den * j;
end
ret = num/den;

% end of file -------------------------------------------------------------