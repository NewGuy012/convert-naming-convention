# Convert Naming Convention
Convert a string array of snake case to camel/pascal case and vice versa.

## Snake Case to Camel Case

### Syntax:
**camel_case = snake2camel(snake_case)**
**camel_case = snake2camel(snake_case,  Name, Value)**

### Input Arguments:
- **snake_case** - Input text in snake case [string array | character vector | cell array of character vectors]


### Name-Value Pair Arguments:
- **FirstLetter** - 


### Examples:
```matlab
% Example 1: Convert from snake case  to camel case 
snake_case = ["num_files", "variable_name", "some_function"];
camel_case = snake2camel(snake_case, 'FirstLetter', 'lower');

% Example 2: Convert from snake case to pascal case
snake_case = ["num_files", "variable_name", "some_function"];
camel_case = snake2camel(snake_case, 'FirstLetter', 'upper');
```

### Special Thanks:
- Special thanks to Stephen for showing the regexp version of this!