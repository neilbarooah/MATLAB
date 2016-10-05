function [out] = sudoku(int)

int1 = sum(sum(int(1:3,1:3))); % find the sum of each 3 X 3 blocks
int2 = sum(sum(int(1:3,4:6))); % variable 'first' checks if these
int3 = sum(sum(int(1:3,7:9))); % are ALL equal to 45
int4 = sum(sum(int(4:6,1:3)));
int5 = sum(sum(int(4:6,4:6)));
int6 = sum(sum(int(4:6,7:9)));
int7 = sum(sum(int(7:9,1:3)));
int8 = sum(sum(int(7:9,4:6)));
int9 = sum(sum(int(7:9,7:9)));
first = isequal(45,int1,int2,int3,int4,int5,int6,int7,int8,int9);

col1 = sum(int(1:9)); % find the sum of elements on each column
col2 = sum(int(10:18)); % variable 'second' checks if these
col3 = sum(int(19:27)); % are ALL equal to 45
col4 = sum(int(28:36));
col5 = sum(int(37:45));
col6 = sum(int(46:54));
col7 = sum(int(55:63));
col8 = sum(int(64:72));
col9 = sum(int(73:81));
second = isequal(45,col1,col2,col3,col4,col5,col6,col7,col8,col9);

flip = int'; % flip the array

row1 = sum(flip(1:9)); % find the sum of elements on each row
row2 = sum(flip(10:18)); % variable 'first' checks if these
row3 = sum(flip(19:27)); % are ALL equal to 45
row4 = sum(flip(28:36));
row5 = sum(flip(37:45));
row6 = sum(flip(46:54));
row7 = sum(flip(55:63));
row8 = sum(flip(64:72));
row9 = sum(flip(73:81));
third = isequal(45,row1,row2,row3,row4,row5,row6,row7,row8,row9);

out = first == 1 & second == 1 & third == 1;


