function [sol] = criminalMinds(A,B,C,D)

newvec = [A; B; C; D]; % Arrange all responses in 4 rows
falses = any(newvec); % ANY responses false 
ind = find(falses ~= 0);
trues = all(newvec); % ALL responses true
ndx = find(trues ~= 1);
newVec = [ind ndx];
liar = mode(newVec);
allanswers = [A(liar) B(liar) C(liar) D(liar)];
liarname = mode(allanswers);
liarName = find(allanswers ~= liarname);
liarName = num2str(liarName);
sol = ['Suspect #',liarName, ' is lying.'];

