function [y] = f(x)
% function to evaluate the value of the given function f(x) at
% different values of x. Refer to the given PDF file for the
% definition f(x) and g(x).
% y = f(x) 
ghelp = x .* abs(x);
y = (1.17.*sqrt(1 + (x .^ 0.9)) + sinh((x .^2) -4))./(1.6487.* exp((x .^ 2) - ghelp));