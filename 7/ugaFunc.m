function [out] = ugaFunc(func,val)

val = num2str(val); % convert given value to a string
[token, remain] = strtok(func,'('); % remove all unncessary elements from function
[tok, rem] = strtok(remain,')');
toReplace = tok(2:1:end);
[remain, right] = strtok(func,' '); 
realFunc = strrep(right,toReplace, val);
realfunc = strrep(realFunc,' ','');
realgunc = strrep(realfunc,'=','');
realgunc = strrep(realgunc,'(','');
realgunc = strrep(realgunc,')','');

ops = realgunc == '*' | realgunc == '+' | realgunc == '-' | realgunc == '/' | realgunc == '^';
tot_ops = sum(ops); % find the total number of operators
op = realgunc(ops); % different operators present
delim = '+-*/^'; % possible operators

n = 2;
[num_1 rest] = strtok(realgunc,delim);
op1 = op(1);
[num_2 restt] = strtok(rest,delim);
num1 = str2num(num_1);
num2 = str2num(num_2);
switch op1
    case '+'
        out = num1 + num2;
    case '-'
        out = num1 - num2;
    case '*'
        out = num1 * num2;
    case '/'
        out = num1 / num2;
    case '^'
        out = num1 ^ num2;
end

while n < tot_ops + 1
    num1 = out;
    op1 = op(n);
    [num2 rest] = strtok(restt,delim);
    restt = rest;
    num2 = str2num(num2);
    switch op1
        case '+'
            out = num1 + num2;
        case '-'
            out = num1 - num2;
        case '*'
            out = num1 * num2;
        case '/'
            out = num1 / num2;
        case '^'
            out = num1 ^ num2;
    end
    n = n + 1;
end






