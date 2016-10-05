function [volume, edgeArea] = disk(radius, thick)
% function to compute the volume and edge area of a flange
topArea = pi .* radius .^ 2 ;
volume = topArea * thick ;
edgeArea = pi .* 2 .* radius .* thick;