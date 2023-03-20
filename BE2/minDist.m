%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% minDist.m
% Calculates the minimum distance of a given code
% Input: C - codeword matrix
% Output: d - minimum distance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function d = minDist(C)
    [m,n] = size(C);
    d = n;
    for i = 1:m-1
        for j = i+1:m
            d = min(d, sum(abs(C(i,:)-C(j,:))));
        end
    end
end