function [area, perim] = rectangle(width, height)
% function to compute the area and perimeter of a rectangle
% area = rectangle(width, height)
% perim = rectangle(width, height)
area = width * height;
perim = 2 * (width + height);