%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% genCode.m
% Generates all possible codewords of a given generator matrix
% Input: G - generator matrix
% Output: C - codeword matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function C = genCode(G)
    [m,n] = size(G);
    C = zeros(2^n,n);
    for i = 0:2^n-1
        b = de2bi(i,n);
        C(i+1,:) = mod(b*G(1),2);
    end
end