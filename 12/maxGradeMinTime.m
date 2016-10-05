function [time, grade, coe] = maxGradeMinTime(timeS, grades)

first = diff(grades)./diff(timeS);
second = diff(first)./diff(timeS(2:end));
time = interp1(second, timeS(3:end),[0],'linear');
grade = interp1(timeS,grades,time);
coe = (grade./time).*max(timeS);