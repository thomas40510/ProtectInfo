function H = entropy(P)
    % compute entropy of discrete random variable
    % P: probability vector
    % H: entropy
    % returns H
    H = -sum(P .* log2(P));
end