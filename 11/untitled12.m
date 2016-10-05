'hello' '!!!o_ _ _ e _ h'
if isempty(str1)
    out = true
elseif str1(1) == str2(end)
    str1(1) = []
    str2(end) = []
    <recursive call>
else
    out = false
end

function out = compStrings(A,B)
A(A == ' ') = []
B(B == ' ') = []
A = lower(A)
B = lower(B)
A(~(A >= 'a' & A <= 'z')) = []
B ....
out = rHelper(A,B)..
end

function out = rHelper(A,B)
if isempty([A B])
    out = true
elseif A(1) == B(end)
    A(1) = []
    B(end) = []
    out = rHelper(A,B)
else
    out = false
end

end

function [out count] = factorial(n)
if n == 1
    out = n
    count = 0
else
    [out count] = factorial(n)
    out = out * n
    count = count + 1
end

end