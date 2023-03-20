%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% genCode.m
% Generates all possible codewords of a given generator matrix
% Input: G - generator matrix
% Output: C - codeword matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function C = genCode(G)
    [m,n] = size(G);
    C = zeros(2^n,n);
    fprintf('Generating code matrix of size %d x %d\n',2^n,n);
    for i = 0:2^n-1
        % progress bar
        if mod(i,100) == 0
            fprintf('Progress: %d/%d\n',i,2^n-1);
        end
        b = de2bi(i,n);
        C(i+1,:) = mod(b*G(1),2);
    end
    fprintf('Progress: %d/%d\n',2^n-1,2^n-1);
end