
% hulls is a data of N rows, 4 or 6 columns

function hull = hullofHulls(hulls)
sets = length(hulls(:,1));
len  = length(hulls(1,:));
hull = hulls(1,:);


if len <=6
    for i = 1 : sets
        if hulls(i,1) < hull(1)
            hull(1) = hulls(i,1);
        end
        if hulls(i,2) > hull(2)
            hull(2) = hulls(i,2);
        end
        if hulls(i,3) < hull(3)
            hull(3) = hulls(i,3);
        end
        if hulls(i,4) > hull(4)
            hull(4) = hulls(i,4);
        end
    end
end
if len == 6    
    for i = 1 : sets
        if hulls(i,5) < hull(5)
            hull(5) = hulls(i,5);
        end
        if hulls(i,6) > hull(6)
            hull(6) = hulls(i,6);
        end
    end
end