% Ian Woodbury
% 10/10/21
% ECE 202 Fall 2021 MATLAB Exam 1
% Prove that e^(a+b) = e^a + e^b

clear 

% ------ given ------

x = linspace(-5, 5, 15); % range of values, known as x from -5 to 5, 15 is the
% number of points used in the range, could be changed without much effect.
g1 = exp(2 + 3*x - (1/4)*x.^2); % function g1, which plots 
% e^(2 + 3x - (1/4)x^2) over the range of x
g2 = exp(2).*exp(3*x).*exp(-(1/4)*x.^2); % function g2, which plots 
% (e^2)*(e^3x)*(e^((1/4)x^2)) over the range of x given above

% ------ check ------

gcheck = sum(g1-g2) % check of g1 and g2 to make sure they have the same 
% outputs, the result of the check should be 0, or really close to zero.
% (with error from floating point values) The sum function makes only
% one value print at the end.