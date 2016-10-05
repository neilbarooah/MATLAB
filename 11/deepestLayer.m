function [out]= deepestLayer(in)
    if isempty(in) % If there's nothing in it, then the output is empty, and we don't need to unwrap anymore (so count =0)
        out = {};
    else
        out = in(1)
        if iscell(out)
            out = in{1}; % Unwrap the element
            if iscell(out)   % If it's still a cell, call the function again.
                out = deepestLayer(out);
            end
        else
            out = in;
        end
    end
end