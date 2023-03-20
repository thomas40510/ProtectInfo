%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% genHammingCodes.m
% Generates all possible codes of a hamming coding given its parameters
% Input: n - number of bits
%        k - number of information bits
% Output: C - codeword matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function C = genHammingCodes(n,k)
    [~,G] = hammingCode(n,k);
    C = genCode(G);
end