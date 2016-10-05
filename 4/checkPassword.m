function [out1] = checkPassword(int1)

length1 = length(int1) >= 8; % check if length greater than 4 characters

masknum = int1 >= '0' & int1 <= '9'; % check for numbers between 0-9
passnum = length(find(masknum)) >=1;

masksym = int1 >= ' ' & int1 <= '/'; % check for symbols between ' ' & '/'
passsym = length(find(masksym)) >=1;

masklow = int1 >= 'a' & int1 <= 'z'; % check for lower-case letters
passlow = length(find(masklow)) >=1;

maskupper = int1 >= 'A' & int1 <= 'Z'; % check for upper-case letters
passupper = length(find(maskupper)) >=1;

lowers = lower(int1); % convert string to lower letters as strfind() is case-sensitive
findpass = strfind(lowers,'password');  % check if it contains 'password'
findPass = isempty(findpass); % empty vector signified it contains no password

out1 = all([length1 passnum passsym passlow passupper findPass]);

