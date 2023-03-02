%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function Y = LempelZivDeco(X,Dict)
% LempelZivDeco - Decodes a received message Y using the Dict dictionary.
% returns the decoded DMS Y.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Y = LempelZivDeco(X,Dict)
    Y = X(:)';
    n = log2(length(Dict));
    Y = [Y, zeros(1, n)];
    for i = 1:length(Y) - n
        for j = 1:length(Dict)
            if Y(i:i+n) == Dict(j).code
                Y(i:i+n) = Dict(j).mot;
                break
            end
        end
    end
end