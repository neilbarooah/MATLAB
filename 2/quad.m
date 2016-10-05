function [posRoot, negRoot] = quad(A, B, C)
% function to compute the positive root and negative root of a
% quadratic polyniam, given the coefficients A, B and C.
% posRoot = quad(A, B, C)
% negRoot = quad(A, B, C)
discrim = B.^2 - (4 .* A .* C);
posRoot = (-B + sqrt(discrim))./(2.*A);
negRoot = (-B - sqrt(discrim))./(2.*A);
