function [cost] = dormTape(totblocks, gold, white, blue, oneroll)
% function to evaluate the total cost of taping the wall of a dorm room, such
% that, the following information is given: the total number of blocks to be
% taped, the fraction of blocks to be old gold, navy blue, and white, and the 
% total number of blocks one roll of tape can cover.
% cost = dormTape(totblocks, gold, white, blue, oneroll) 
pricegold = ceil((totblocks .* gold)./oneroll).* 1.08 .* 4.99;
pricewhite = ceil((totblocks .* white)./oneroll).* 1.08 .* 2.99;
priceblue = ceil((totblocks .* blue)./oneroll).* 1.08 .* 3.99;
a = pricegold + pricewhite + priceblue;
cost = round(a,2);