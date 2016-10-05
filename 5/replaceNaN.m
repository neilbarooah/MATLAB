function [x] = replaceNaN(intnan,int)
locations = find(isnan(intnan)); % find the indices of the NaN elements
intnan(locations) = int(locations); % replace elements at those locations with
x = intnan;                         % corresponding elements from int.
