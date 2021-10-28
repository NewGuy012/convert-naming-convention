function snake_case = camel2snake(camel_case)
%camel2snake Converts string array from camel case to snake case
%
% Syntax:
%   camel2snake(camel_case)
%
% Input Arguments:
%   camel_case - Input text in camel case
%                [string array | character vector | cell array of character vectors]
%
% Examples:
% % Example 1
% camel_case = ["nFiles", "VariableName", "someFunction"];
% snake_case = camel2snake(camel_case);
%
% Author:
%   Moses Yoo, (juyoung.m.yoo at gmail dot com)

% Check if input argument is a string
if ~isstring(camel_case)
    camel_case = string(camel_case);
end

% Initialize string array
snake_case = camel_case;

% Iterate through camel case strings
for ii = 1:length(camel_case)
    % Find all the indicies where there is a capitial letter
    camel_name = camel_case(ii);
    index = isstrprop(camel_name, 'upper');
    index(1) = false;
    bCapitialLetterExist = any(index);

    % Check if capital letters still exist
    while bCapitialLetterExist
        % Get index of first capital letter
        capital_index = find(index, 1);

        % Extract the capital letter at the index
        capital_letter = extractBetween(camel_name, capital_index, capital_index);

        % Convert to lowercase and concatenate an underscore
        lower_letter = lower(capital_letter);
        snake_letter = "_" + lower_letter;

        % Replace string
        camel_name = replaceBetween(camel_name, capital_index, capital_index, snake_letter);

        % Update index of capitial letters left
        index = isstrprop(camel_name, 'upper');
        index(1) = false;
        bCapitialLetterExist = any(index);
    end

    % Store snake case name
    first_letter = extractBefore(camel_name, 2);
    lower_letter = lower(first_letter);
    snake_name = replaceBetween(camel_name, 1, 1, lower_letter);
    snake_case(ii) = snake_name;
end

end