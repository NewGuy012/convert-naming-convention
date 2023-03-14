function snake_case = camel2snake(camelCase)
%camel2snake Converts string array from camel case to snake case
%
% Syntax:
%   snake_case = camel2snake(camelCase)
%
% Input Arguments:
%   camelCase - Input text in camel case
%                [string array | character vector | cell array of character vectors]
%
% Documentation:
%   Please refer to the GitHub page for examples and more details.

% Argument validation
arguments
    camelCase {mustBeText}
end

% Place an underscore between letters of adjacent lower case and upper case
snake_case = regexprep(camelCase,'([a-z])([A-Z])','$1_${lower($2)}');

% Lower case first letter if upper case
snake_case = regexprep(snake_case, '^([A-Z])', '${lower($1)}');
end