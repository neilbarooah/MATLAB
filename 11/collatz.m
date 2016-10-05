function [out count] = collatz(in)
    [out count] = helper(in,0)
end

function [out count] = helper(in, count)
    if in < 2
        out = in
        count = 0
    else
        if mod(in,2) == 0 
            [out count] = collatz(in/2)
            count = count +1
        else
            [out count] = collatz(3.*in +1)
            count = count +1
        end
    end

end
