function camel_case = snake2camel(snake_case, options)
%snake2camel Converts string array from snake case to camel case
%
% Syntax:
%   snake2camel(snake_case)
%
% Input Arguments:
%   snake_case - Input text in snake case
%                [string array | character vector | cell array of character vectors]
%
% Examples:
% % Example 1
% snake_case = ["num_files", "variable_name", "some_function"];
% camel_case = snake2camel(snake_case, 'FirstLetter', 'lower');
%
% Author:
%   Moses Yoo, (juyoung.m.yoo at gmail dot com)

% Argument validation
arguments
    snake_case {mustBeText}
    options.FirstLetter char {mustBeMember(options.FirstLetter, {'lower', 'upper'})} = 'lower'
end

% Check if input argument is a string
if ~isstring(snake_case)
    snake_case = string(snake_case);
end

% Initialize string array
camel_case = snake_case;

% Iterate through snake case strings
for ii = 1:length(snake_case)
    % Find all the indicies where there is an underscore
    snake_name = lower(snake_case(ii));
    index = strfind(snake_name, "_");
    index = index + 1;

    % Check whether or not to uppercase first letter
    if strcmpi(options.FirstLetter, 'upper')
        index = [1, index];
    end

    % Iterate through found indicies
    for jj = index
        % Extract the letter at the index
        letter = extractBetween(snake_name, jj, jj);
    
        % Capitialize if a string
        if isstring(letter)
            capital_letter = upper(letter);
        else
            capital_letter = letter;
        end

        % Replace letter with capital letter
        snake_name = replaceBetween(snake_name, jj, jj, capital_letter);
    end

    % Remove underscores
    camel_name = replace(snake_name, "_", "");
    camel_case(ii) = camel_name;
end

end