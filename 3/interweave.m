function [z] = interweave(x, y)
% function that takes in two vectors and then outputs a larger vector
% where the odd elements contain the values from the first vector, and
% the even elements contain the values from the second vector
a = length(x); 
b = length(y);
c = 2 .* max(a,b); % total length of final output vector 
zerosVec = zeros(1,c); % vector of zeroes of appropriate size
zerosVec(1:2:2.*a) = x(1:1:end); % filling in odd elements
zerosVec(2:2:2.*b) = y(1:1:end); % filling in even elements
z = zerosVec;

