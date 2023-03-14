function [camelCase, PascalCase] = snake2camel(snake_case)
%snake2camel Converts string array from snake case to camel/pascal case
%
% Syntax:
%   camelCase = snake2camel(snake_case)
%
% Input Arguments:
%   snake_case - Input text in snake case
%                [string array | character vector | cell array of character vectors]
%
% Documentation:
%   Please refer to the GitHub page for examples and more detail.

% Argument validation
arguments
    snake_case {mustBeText}
end

% Capitialize letters with that have an underscore preceding it
temp_txt = regexprep(snake_case,'_([a-z])','${upper($1)}');

% Remove underscore for numbers that have an underscore preceding
temp_txt = regexprep(temp_txt,'_([0-9])', '$1');

% Camel case
camelCase = regexprep(temp_txt, '^([a-z])', '${upper($1)}');

% Pascal case
PascalCase = regexprep(temp_txt, '^([A-Z])', '${lower($1)}');
end