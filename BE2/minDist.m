%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% minDist.m
% Calculates the minimum distance of a given code
% Input: C - codeword matrix
% Output: d - minimum distance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function d = minDist(C)
    [m,n] = size(C);
    d = n;
    for i = 1:m
        for j = i+1:m
            if sum(rem(C(i,:)+C(j,:),2)) < d
                d = sum(rem(C(i,:)+C(j,:),2));
            end
        end
    end
end