function result = factorial(N)
if (N < 0) || ((N-floor(N)) > 0)
    error('bad parameter for factorial');
else
    result = local_fact(N);
end

function result = local_fact(N)
if N == 0
    result = 1;
else
    result = N * local_fact(N-1);
end