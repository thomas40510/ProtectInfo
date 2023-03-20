%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hammingCode.m
% Generates codes of a hamming coding given its parameters
% Input: n - number of bits
%        k - number of information bits
% Output: H - hamming code matrix
%         G - generator matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [H,G] = hammingCode(n,k)
    % cols of H are binary numbers from 1 to n written on n-k bits
    H = zeros(n,n-k);
    for i = 1:n-k
        H(:,i) = str2num(dec2bin(i,n))';
    end
    % G is the matrix obtained by adding to H the identity matrix
    G = [eye(n) H];
    % H is the matrix obtained by adding to G the parity check matrix
    H = [G rem(G*G',2)];
end