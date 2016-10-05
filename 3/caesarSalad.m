function [z] = caesarSalad(x, y)
% function that takes in a string of a single word and uses the Caesar
% cipher with the input shift numbers to encode it.
ASCval = double(x); % conversion of input(x) into ASCII values
% range of lowercase letters is from 97-122
convertVal = ASCval - 96; % conversion of ASCval to numbers between 1-26
shiftAdded = convertVal + y; % addition of the shift value
modedVal = mod(shiftAdded,26); % mod of the sum
finalVal = modedVal + 96; % addition of 96 to convert back to new ASCII value
z = char(finalVal);

