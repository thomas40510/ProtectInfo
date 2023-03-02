
% function Dict = LempelZivDic(X, n)
%     %LempelZivDic - Generate a dictionary of length 2^n from the discrete source X.
%     %
%     % Syntax: Dict = LempelZivDic(X,n)
%     %
%     % The output of this function is a vector of structures (dict.mot and dict.code; a word of the code must be on n+1 bits).
%     % On parcourt tout le vecteur X pour chercher les mots uniques qui le constituent
%     % On les stocke dans un vecteur de structures
%     % On parcourt ensuite ce vecteur pour créer le code de chaque mot
%     % On stocke le code dans la structure correspondante
%     % On retourne le vecteur de structures
%     mots = [];
%     codes = [];
%     i = 1;
%     mot = dec2bin(X(i));

%     while i < length(X)

%         if ~ismember(mot, [Dict.mot])
%             mots(end + 1) = mot;
%             % Dict(end).code = dec2bin(i-1,n+1);
%         else
%             i = i + 1;
%             mot = strcat(mot, dec2bin(X(i)));
%         end

%     end

%     for mot = mots
%         codes(end + 1) = dec2bin(find([mots] == mot) - 1, n + 1);
%     end

%     Dict = struct('mot', mots, 'code', codes);
% end

function Dict = LempelZivDic(X, n)
    %LempelZivDic - Generate a dictionary of length 2^n from the discrete source X.
    %
    % Syntax: Dict = LempelZivDic(X,n)
    %
    % The output of this function is a vector of structures (dict.mot and dict.code; a word of the code must be on n+1 bits).
    % 
    % Input:
    % - X: vector representing the discrete source
    % - n: length of the code word (a word of the code must be on n+1 bits)
    % Output:
    % - Dict: vector of structures (dict.mot and dict.code)

    % Initialize the dictionary with the single symbols from the source
    Dict = struct('mot', num2cell(X), 'code', num2cell(1:length(X) - 1)');

    % Initialize the variables for the loop
    code_length = length(X);
    code_number = code_length;

    % Loop through the source to build the dictionary
    for i = 1:length(X)
        code_length = code_length + 1;
        code_word = X(i);
        j = i + 1;

        while j <= length(X) && code_length <= 2 ^ n
            code_word = [code_word, X(j)];
            j = j + 1;

            if ~ismember(code_word, [Dict.mot])
                Dict(code_number + 1) = struct('mot', {code_word}, 'code', code_number);
                code_number = code_number + 1;
                code_word = X(i);
                code_length = code_length + 1;
            end

        end

    end

    % Remove any extra entries in the dictionary if necessary
    if code_length > 2 ^ n
        Dict = Dict(1:2 ^ n);
    end

end