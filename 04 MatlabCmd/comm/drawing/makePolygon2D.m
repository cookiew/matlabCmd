function xy = makePolygon2D(x,y)
xy(:,1) = x;
xy(:,2) = y;
len = length(x);
xy(len+1,1) = x(1);
xy(len+1,2) = y(1);