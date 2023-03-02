%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function Y = LempelZivDeco(X,Dict)
% LempelZivDeco - Decodes a received message Y using the Dict dictionary.
% returns the decoded DMS Y.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Y = LempelZivDeco(X,Dict)
    % implement Lempel-Ziv decoding

    % initialize variables
    Y = [];
    n = log2(length(Dict));
    X = X(:)';
    X = [X, zeros(1, n)];
    i = 1;

    % loop over the DMS
    while i <= length(X) - n
        % find the longest word in the dictionary that matches the current
        % word
        for j = 1:length(Dict)
            if X(i:i+n) == Dict(j).code
                Y = [Y, Dict(j).mot];
                i = i + n + 1;
                break
            end
        end
    end

    % remove the last n bits
    Y = Y(1:end-n);
end