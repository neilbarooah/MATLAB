function out = loveCalculator(name1,name2)

same = findstr(name1,name2);

l1 = sum(name1 == 'l');
l2 = sum(name2 == 'l');
o1 = sum(name1 == 'o');
o2 = sum(name2 == 'o');
v1 = sum(name1 == 'v');
v2 = sum(name2 == 'v');
e1 = sum(name1 == 'e');
e2 = sum(name2 == 'e');
s1 = sum(name1 == 's');
s2 = sum(name2 == 's');

first = l1 + l2;
second = o1 + o2;
third = v1 + v2;
fourth = e1 + e2;
fifth = s1 + s2;

first2 = first + second;
second2 = second + third;
third2 = third + fourth;
fourth2 = fourth + fifth;

first3 = first2 + second2;
second3 = second2 + third2;
third3 = third2 + fourth2;

first4 = num2str(first3 + second3);
second4 = num2str(second3 + third3);

final = str2num([first4 second4]);

if same == true
    out = 0;
    
else
    out = final;

end
