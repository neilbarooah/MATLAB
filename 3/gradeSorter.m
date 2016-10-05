function [res] = gradeSorter(x, y, z)
% function that outputs a string of combined first and last initials of
% students (with spaces between them, sorted in order of the corresponding
% students' grades in descending order
[grades ndx] = sort(x,'descend'); % sort grades x in descending order
init = [y(ndx)]; % sort the initial names y according to the descending order of grades
surn = [z(ndx)]; % sort the last names z according to the descending order of grades
totalnum = length(x); % total blanks needed
nxt = [init;surn;blanks(totalnum)];
Out1 = nxt(1:1:end); % arranged in the required way
Outfin = nxt(1:1:end-1); % to remove the space at the end of the vector
res = Outfin


