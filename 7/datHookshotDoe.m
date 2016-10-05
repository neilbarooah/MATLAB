function [weapon,money] = datHookshotDoe(start,direction,distance,letters,rupee)

i = start(1); % find row number of inital position
j = start(2); % find column number of initial position
weapon = []; % empty array to fill in letters of weapon
money = []; % empty array to fill in money collected
n = 1; % counter
while distance(i,j) ~= 0 & direction(i,j) ~= 'stop'
    money(n) = rupee(i,j); % money collected at (i,n)
    weapon(n) = letters(i,j);% letter at (i,n)
    n = n+1;
    switch direction(i,j)
        case 'W' % moves left
            i = i;
            j = j-distance(i,j);

        case 'E' % moves right
            i = i;
            j = j+distance(i,j);
        case 'N' % moves up
            i = i-distance(i,j);
            j = j;
        case 'S' % moves down
            i = i+distance(i,j);
            j = j;       
    end

end

weapon(end+1) = letters(i,j); % last letter of weapon
money(end+1) = rupee(i,j); % last money collected
weapon = char(weapon); % conversion of array to string
money = sum(money); % sum of all money collected
        
        



