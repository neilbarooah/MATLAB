function [imp, goal, miles] = runBabyRun(target, mile)

arr = (1:28); % creates an array from 1 to 28 (28 days in 4 weeks)
milee = mile'; % transpose given input so ecah week appears column by column
arr(1:28) = milee(1:28); % fill created array with the transpose 
difference = diff(arr); % difference between consecutive elements
imp = max(max(difference)); % take max of max improvements of each week, to give max improvement of the month

mask = mile >= target; % gives true on indices where runner has achieved the goal
goal = any(any(mask)); % 'any' function to check if any one is equal to more than the goal

miles = sum(milee); % transpose is taken so it appears on column basis for each week, and then their sums

