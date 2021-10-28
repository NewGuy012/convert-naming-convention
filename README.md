# Convert Naming Convention
Convert a string array of snake case to camel/pascal case and vice versa.

# Snake Case to Camel Case

## Syntax:
- **camel_case = snake2camel(snake_case)**

- **camel_case = snake2camel(snake_case, Name, Value)**

## Input Arguments:
- **snake_case** - Input text in snake case. [string array | character vector | cell array of character vectors]

## Name-Value Pair Arguments:
- **FirstLetter** - Used to set the letter case of the first letter of the string. ['lower' (default), 'upper']

## Examples:
```matlab
% Example 1: Convert from snake case  to camel case 
snake_case = ["num_files", "variable_name", "some_function"];
camel_case = snake2camel(snake_case, 'FirstLetter', 'lower');

% Example 2: Convert from snake case to pascal case
snake_case = ["num_files", "variable_name", "some_function"];
camel_case = snake2camel(snake_case, 'FirstLetter', 'upper');
```

# Camel Case to Snake Case

## Syntax:
**snake_case = camel2snake(camel_case)**

## Input Arguments:
- **camel_case** - Input text in camel case. [string array | character vector | cell array of character vectors]

## Examples:
```matlab
% Example 1: Convert from camel case to snake case
camel_case = ["nFiles", "VariableName", "someFunction"];
snake_case = camel2snake(camel_case);
```

## Author:
- Moses Yoo, (juyoung.m.yoo at gmail dot com)

# Special Thanks:
- Special thanks to Stephen for showing the regexp version of this!