function [y] = varInfo(a)
% function to identify the class of the input variable and
% to display its value.
% y = varInfo(x) 
clss = class(a); % identify class of input
val = num2str(a); % convert input into a string
d = sprintf(clss); % proper formatting
e = sprintf(val); % proper formatting
y = ['This variable is of class ', d, ' ','and has a value of ''', e, '''.'];

