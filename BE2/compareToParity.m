%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% compareToParity.m
% Compares the minimum distance of a given code with the minimum distance
% of a parity code with the same parameters
% Input: G - generator matrix
% Output: d - minimum distance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function d = compareToParity(G)
    [m,n] = size(G);
    C = genCode(G);
    d = minDist(C);
    [Cp,Gp] = parityCode(n,m);
    fprintf('min dist parity\n');
    dp = minDist(Cp);
    fprintf('min dist code OK\n');
    fprintf('Minimum distance of the code: %d\n',d);
    fprintf('Minimum distance of the parity code: %d\n',dp);
end