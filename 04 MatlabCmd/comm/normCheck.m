function ret = normCheck(vec)

ret = 0;
for i = 1 : length(vec)
    ret = ret + vec(i)^2;
end
