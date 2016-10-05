function [result] = nFib(init,num)

% first set the cases for initial value of 0 or 1

if init == 0 || init == 1
    x1 = init;
    x2 = 1;
    result(1:2) = [x1,x2];
elseif num == 1
    result = init;
else
    x1 = init;
    x2 = init;
    result(1:2) = [x1,x2];
end

i = 3;
while i - 1 < num
    x1 = result(i-2);
    x2 = result(i-1);
    result(i) = x1 + x2;
    i = i + 1;
end