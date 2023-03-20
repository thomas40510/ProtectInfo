%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% parityCode.m
% Generates a parity code given its parameters
% Input: n - number of bits
%        k - number of information bits
% Output: C - parity code matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [C, G] = parityCode(n,k)
    G = [eye(k) zeros(k,n-k)];
    C = [G rem(G*G',2)];
end