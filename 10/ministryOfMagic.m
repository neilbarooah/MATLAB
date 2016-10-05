function [out] = ministryOfMagic(text, auror)
fh = fopen(text);
line = fgetl(fh);
name1 = line;
count = 0;
while line ~= -1
    line = lower(line);
    dark = strfind(line,'dark');
    dark = length(dark);
    lord = strfind(line,'lord');
    lord = length(lord);
    cruciatus = strfind(line,'cruciatus');
    cruciatus = length(cruciatus);
    death = strfind(line,'death');
    death = length(death);
    count = count + dark + lord + cruciatus + death;
    line = fgetl(fh);
end
count = 2*count;
[a b] = size(auror);
names = {auror.name};
experience = {auror.experience};
strength = {auror.strength};
rank = {auror.rank};
totalpoints = [];
n = 1;
while n <= b
    p = experience{n}./2;
    q = strength{n};
    r = rank{n};
    totalpoints = [totalpoints [p+q+r]];
    n = n+1;
end
[points, ndx] = sort(totalpoints);
names = names(ndx);
x = 1;
while x <= b
    point = points(x);
    out = sprintf('The Ministry of Magic Department of Magical Law Enforcement dispatched %s to take on %s. %s failed to apprehend %s.',names{b},name1,names{b},name1);
    if point > count
        out = sprintf('The Ministry of Magic Department of Magical Law Enforcement dispatched %s to take on %s. %s succeeded in apprehending %s.',names{x},name1,names{x},name1);
        break
    end
    x = x+1;
end
y = 1;
aurors = [];
while y <= b
    aurors = [aurors names{y}];
    y = y+1;
end
if findstr(aurors,'Harry Potter') & isequal(name1,'Voldemort')
    out = sprintf('The Ministry of Magic Department of Magical Law Enforcement dispatched Harry Potter to take on Voldemort. Harry Potter absolutely destroyed Voldemort.');
end
