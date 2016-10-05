function [meanval] = meanNonZero(int)
int(int==0) = []; % remove all zeros
meanval = mean(int); % mean of remaining values