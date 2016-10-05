function [growth] = theRatio(totalf,totalnum,year)
ratio = totalf./totalnum; % ratio of girls to total number of students
difference = diff(ratio); % difference between ratios of two consecutive elements in 'ratio'
[neededyear, ndx] = max(difference); % getting index of maximum difference between two years
growth = year(ndx:1:ndx+1); % using index on original vector 'year'
