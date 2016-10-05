function[y] = r_nFib(inp1, n)
y = zeros(1,n);
for m = 1:n
    y(m) = fib(m);
end

function y = fib(n)
if n<3
   if inp1 == 0 || inp1 == 1
       y(1) = inp1;
       y(2) = 1;
   else
       y(1:n) = inp1;
   end
else
    y(n) = fib(n-2) + fib(n-1);
end
    y = y(n);
end
end