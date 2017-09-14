function abc = vtcToEdges(vertices)
% convert vertices representation of a polygon to edges representation

vertices = sortPolyVtc(vertices); % couterclock-wise, closed
ctr = mean(vertices,2);
nEdges = size(vertices,2) - 1;
abc = zeros(3,nEdges);
for i = 1:nEdges
    abc(:,i) = pointToLine(vertices(:,i), vertices(:,i+1), ctr);
end
end