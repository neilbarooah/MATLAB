function [mult] = multiTable(N)

for row_ndx = 1:N;
    for col_ndx = 1:N;
        mult(row_ndx, col_ndx) = row_ndx * col_ndx;
    end
end