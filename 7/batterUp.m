function [totals,avg,sent] = batterUp(output)

homerun = sum(output == 10);
regular = sum(output == 5);
foul = sum(output == 1);
out = sum(output == 0);
miss = sum(isnan(output));
totals = [homerun,regular,foul,out,miss];
avg = ((homerun.*10)+(regular.*5)+foul)./(length(output));

if avg >= 5
    sent = 'You had a great round!';
elseif avg >= 2 && avg < 5
    sent = 'You had an ok round.';
else
    sent = 'Not your best round.';
end
        