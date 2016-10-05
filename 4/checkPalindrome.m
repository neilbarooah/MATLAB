function [lgc] =  checkPalindrome(int)
str = int;
str(str == ' ') = []; % remove spaces
str = lower(str(1:1:end)); % lower all letters
backwards = str(end:-1:1); % arrange the words backwards
lgc = logical(strcmp(backwards,str)); % check if new string matches original one

