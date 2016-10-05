function newStruct = myStruct(ca)
n = 1;
newStruct.A = 1;
while n <= length(ca)
    m = 1;
    total = length(ca{n+1});
    while m <= total
        newStruct(m).(ca{n}) = ca{n+1}{m};
        m = m+1;
    end
    n = n+2;
end
q = 2;
mycell = [];
while q <= length(ca)
    mycell = [mycell length(ca{q})];
    q = q+2;
end
g = max(mycell);
p = 2;
while p <= length(ca)
    if length(ca{p}) < g
        q = 1;
        while q <= g
            newStruct(q).(ca{p-1}) = char(ca{p});
            q = q+1;
        end
    end
    p = p+2;
end

newStruct = rmfield(newStruct,'A');

