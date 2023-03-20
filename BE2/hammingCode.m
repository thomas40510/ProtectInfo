%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hammingCode.m
% Generates codes of a hamming coding given its parameters
% Input: n - number of bits
%        k - number of information bits
% Output: H - hamming code matrix
%         G - generator matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [H,G] = hammingCode(n,k)
    A = zeros(n-k, k);
    for i = 1:n-k
        A(i,:) = de2bi(i,k);
    end
    G = [eye(k) A.'];
    H = [G rem(G*G',2)];
end