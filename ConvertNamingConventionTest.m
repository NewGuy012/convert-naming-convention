classdef ConvertNamingConventionTest < matlab.unittest.TestCase

    methods(TestClassSetup)
        % Shared setup for the entire test class
    end

    methods(TestMethodSetup)
        % Setup for each test
    end

    methods(Test)
        % Test methods

        % Convert from camel case to snake case
        function Camel2SnakeTest(testCase)
            camelCase = ["nFiles", "VariableName", "someFunction"];
            act = camel2snake(camelCase);
            exp = ["n_files", "variable_name", "some_function"];

            testCase.verifyEqual(act, exp);
        end

        % Convert from snake case to camel case
        function Snake2CamelTest(testCase)
            snake_case = ["num_files", "variable_name", "some_function"];
            act = snake2camel(snake_case);
            exp = ["numFiles", "variableName", "someFunction"];

            testCase.verifyEqual(act, exp);
        end

        % Convert from snake case to pascal case
        function Snake2PascalTest(testCase)
            snake_case = ["num_files", "variable_name", "some_function"];
            act = snake2camel(snake_case, 'FirstLetter', 'upper');
            exp = ["NumFiles", "VariableName", "SomeFunction"];

            testCase.verifyEqual(act, exp);
        end
    end

end