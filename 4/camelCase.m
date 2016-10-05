function [out1] = camelCase(int1)

alllowers = lower(int1(1:1:end)); % lower all letters
spaces = alllowers == ' '; % find indices of spaces
ndx = find(spaces) + 1; % find first letter of each word
alllowers(ndx) = upper(alllowers(ndx)); % capitalize first letters
alllowers(alllowers == ' ') = []; % remove spaces
out1 = alllowers;

