%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% parityCode.m
% Generates a parity code given its parameters
% Input: n - number of bits
%        k - number of information bits
% Output: H - parity code matrix
%         G - generator matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [H,G] = parityCode(n,k)
    % cols of H are binary numbers from 1 to n written on n-k bits
    H = zeros(n,n-k);
    for i = 1:n-k
        H(:,i) = str2num(dec2bin(i,n))';
    end
    % G is the matrix obtained by adding to H the identity matrix
    G = [eye(n) H];
end