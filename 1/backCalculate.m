function [B] = backCalculate(A, hyp)
% function to compute the length of side B of a right triangle,
% such that another side of length A and the length of hypotenuse
% are known
% B = backCalculate(A, hyp)
% Use Pythagorean Theorem to find Side B
Bsq = hyp^2 - A.^2;
B = sqrt(Bsq);
