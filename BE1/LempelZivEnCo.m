%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function X = LempelZivEnCo(X,Dict)
% LempelZivEnCo - Encodes a DMS X using the dictionary Dict.
% returns the encoded DMS X.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function E = LempelZivEnCo(X,Dict)
    % implement Lempel-Ziv encoding

    % initialize variables
    E = [];
    n = log2(length(Dict));
    X = X(:)';
    X = [X, zeros(1, n)];
    i = 1;

    % loop over the DMS
    while i <= length(X) - n
        % find the longest word in the dictionary that matches the current
        % word
        for j = 1:length(Dict)
            if X(i:i+n) == Dict(j).mot
                E = [E, Dict(j).code];
                i = i + n + 1;
                break
            end
        end
    end

    % remove the last n bits
    E = E(1:end-n);
end