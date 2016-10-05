function [steady,percent] = findSS(expt)

avg1 = mean(expt);
i = 11;
avg2 = mean(expt(i:1:end));
x = (abs(avg1-avg2))./(avg1);
y = 1;
while x > 0.0005
    i = i + 10;
    y = y + 1;
    avg1 = avg2;
    avg2 = mean(expt(i:1:end));
    x = (abs(avg1-avg2))./(avg1);
end 

leng = length(expt);
rounded_leng = round(leng./10).*10;
leng1 = leng - (i-11);
rounded_leng1 = round(leng1./10).*10;
steady = round(avg2.*100)./100;
percent = round((rounded_leng1./rounded_leng).*10).*10;


