function result = fib(N)
if N == 1 || N == 2
    result = 1;
else
    result = fib(N-1) + fib(N-2);
end