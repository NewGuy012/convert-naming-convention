function camelCase = snake2camel(snake_case, options)
%snake2camel Converts string array from snake case to camel/pascal case
%
% Syntax:
%   camelCase = snake2camel(snake_case)
%
% Input Arguments:
%   snake_case - Input text in snake case
%                [string array | character vector | cell array of character vectors]
%
% Name-Value Pair Arguments:
%   FirstLetter - Used to set the first letter to lower or upper case.
%                 ['lower' (default), 'upper']
%
% Examples:
%   % Example 1: Convert from snake case to camel case 
%   snake_case = ["num_files", "variable_name", "some_function"];
%   camelCase = snake2camel(snake_case);
%   
%   % Example 2: Convert from snake case to pascal case
%   snake_case = ["num_files", "variable_name", "some_function"];
%   PascalCase = snake2camel(snake_case, 'FirstLetter', 'upper');
%
% Author:
%   Moses Yoo, (juyoung.m.yoo at gmail dot com)
%
% Special Thanks:
%   Special thanks to Stephen for showing and explaining the much simpler
%   regular expression version!

% Argument validation
arguments
    snake_case {mustBeText}
    options.FirstLetter char {mustBeMember(options.FirstLetter, {'lower', 'upper'})} = 'lower'
end

% Capitialize letters with that have an underscore preceding it
camelCase = regexprep(snake_case,'_([a-z])','${upper($1)}');

% Remove underscore for numbers that have an underscore preceding
camelCase = regexprep(camelCase,'_([0-9])', '$1');

% Option to upper or lower case the first letter
switch options.FirstLetter
    case 'upper'
        camelCase = regexprep(camelCase, '^([a-z])', '${upper($1)}');
    case 'lower'
        camelCase = regexprep(camelCase, '^([A-Z])', '${lower($1)}');
end

end