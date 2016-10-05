function [mult] = multi(N)
for row_index = 1:N; % to list elements from 1 to N
    for col_index = 1:N; % to list elements from 1 to N
        mult(row_index, col_index) = row_index * col_index; % take indices and take product of corresponding element of row and column
    end
end