function out = howSingle(major,gender,year,pokemon)

switch major
    case 'Business'
        switch pokemon
            case true
                score1 = 16;
            otherwise
                score1 = 1;
        end
    case 'Engineer'
        switch pokemon
            case true
                score1 = 18;
            otherwise
                score1 = 3;
        end
    case 'CS'
        switch pokemon
            case true
                score1 = 20;
            otherwise
                score1 = 5;
        end
    otherwise
        score1 = 0;
end

switch gender
    case 'Male'
        score2 = 1;
    otherwise
        score2 = 3;
end

totscore = score1 +score2 + year;

if totscore >= 10
    out = sprintf('You''re totally HOT, you won''t be single long!');
elseif totscore >= 5 && totscore < 10
    out = sprintf('You''re not completely undateable, keep trying!');
else
    out = sprintf('You might want to renew your Netflix subscription.');
end
           