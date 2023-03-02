
function Dict = LempelZivDic(X,n)
%LempelZivDic - Generate a dictionary of length 2^n from the discrete source X.
%
% Syntax: Dict = LempelZivDic(X,n)
%
% The output of this function is a vector of structures (dict.mot and dict.code; a word of the code must be on n+1 bits).
    % On parcourt tout le vecteur X pour chercher les mots uniques qui le constituent
    % On les stocke dans un vecteur de structures
    % On parcourt ensuite ce vecteur pour créer le code de chaque mot
    % On stocke le code dans la structure correspondante
    % On retourne le vecteur de structures
    Dict = struct('mot',[],'code',[]);
    i=1;
    mot=X(i);
    while i < length(X)
        if ~ismember(mot,[Dict.mot])
            Dict(end+1).mot = mot;
            % Dict(end).code = dec2bin(i-1,n+1);
        else
            i=i+1;
            mot = [mot X(i)];
        end
    end
    for mot = Dict
        Dict(end+1).code = dec2bin(find([Dict.mot]==mot.mot)-1,n+1);
    end
end