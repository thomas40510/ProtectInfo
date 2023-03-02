function moybits = moybits(N, P)
    % compute average number of bits per symbol
    % P: probability vector
    % N: length of codewords
    % moybits: average number of bits per symbol
    % returns moybits
    moybits = sum(P .* N);
end