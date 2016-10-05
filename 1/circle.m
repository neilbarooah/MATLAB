function [area, perimeter] = circle(radius)
% function to compute the area and perimeter of a given circle;
% area = circle(radius)
% perimeter = circle(radius)
area = pi .* radius^2;
perimeter = 2 * pi* radius;

