function ans = isPal(str)
if length(str) < 2
    ans = true;
elseif str(1) ~= str(end)
    ans = false;
else
    ans = isPal(str(2:end-1));
end