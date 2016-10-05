function [z] = multiVar(x, y)
% function evaluates the given multi-variable function for
% vectors of x and y values
% [z] = multiVar([x, y])
z = ((x .* y) - (sqrt(x)./y))./(3 * x + y); % notice the dot operators
