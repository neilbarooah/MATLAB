function [avg, broken] = tempCheck(month1, month2, month3)

add = month1 + month2 + month3; % sum of three readings
broken = month1 == month2 & month1 == month3; % indices of broken thermometers
add(broken) = 0; % replace those locations with zeros
avg = add/3; % average from three readings on each day
