function [exist degree] = sixDegreesOfWaldo(waldo)
    [exist degree] = helper(waldo,0);
end

function [exist degree] = helper(waldo,degree)
exist = false;
friends = {waldo.Friends};
waldo = rmfield(waldo,'Friends');
fields = fieldnames(waldo);
for i = 1:length(fields)
    consider = {waldo.(fields{i})};
    exist = strcmp(consider,'Waldo');
    if sum(exist) >= 1
        exist = true;
    end
end
for k = 1:length(friends)
    new_struct = friends{k};
    if isstruct(new_struct)
        [exist degree] = sixDegreesOfWaldo(new_struct);
        degree = degree + 1;
    end
end
end



