%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function moybits = moybits(N, P)
% compute average number of bits per symbol
% P: probability vector
% N: length of codewords
% moybits: average number of bits per symbol
% returns moybits
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function moybits = moybits(N, P)
    moybits = sum(sum(P .* N)) / length(P);
end