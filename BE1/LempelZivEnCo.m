%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function X = LempelZivEnCo(X,Dict)
% LempelZivEnCo - Encodes a DMS X using the dictionary Dict.
% returns the encoded DMS X.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function X = LempelZivEnCo(X,Dict)
    % encode DMS X using dictionary Dict
    
    X = X(:)';
    n = log2(length(Dict));
    X = [X, zeros(1, n)];
    for i = 1:length(X) - n
        for j = 1:length(Dict)
            if X(i:i+n) == Dict(j).mot
                X(i:i+n) = Dict(j).code;
                break
            end
        end
    end
    
end