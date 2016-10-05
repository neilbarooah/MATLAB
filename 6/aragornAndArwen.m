function out = aragornAndArwen(type,facial,power,age)

power = sum(power);

switch type
    
    case 'orc'
        out = sprintf('Your only shot at love would be a match made in Mordor.');
    
    case 'Gollum'
        out = sprintf('You lost your Precious, the One Ring. Please, try again later.');
    
    case 'dwarf'
        score1 = 20;
        
        switch facial
            case 1
                score2 = 5;
            case 2
                score2 = 10;
            case 3
                score2 = 15;
            case 4
                score2 = 20;
            otherwise
                score2 = 0;
        end
        
        if power >= 2
            score3 = 20;
        elseif power == 1
            score3 = 10;
        else
            score3 = 0;
        end
        
       if age > 50 && age < 125
           score4 = 20;
       else
           score4 = 0;
       end
       
       score = (score1 + score2 + score3 + score4);
       score = round(score .* 100)./80;
        
       if score >= 50
           out = sprintf('You have %0.2f%% odds of finding your soul mate in Middle Earth.',score);
       else
           out = sprintf('Your only shot at love would be a match made in Mordor.');
       end
        
    case 'elf'
        score1 = 30;
        
        switch facial
            case 1
                score2 = 20;
            otherwise
                score2 = 0;
        end
        
        if power >= 2
            score3 = 20;
        elseif power == 1
            score3 = 10;
        else
            score3 = 0;
        end
        
        if age >= 50
            score4 = 20;
        else
            score4 = 0;
        end
        
        score = (score1 + score2 + score3 + score4);
        score = round(score .* 100)./80;
        
        if score >= 50
            out = sprintf('You have %0.2f%% odds of finding your soul mate in Middle Earth.',score);
        else
            out = sprintf('Your only shot at love would be a match made in Mordor.');
        end
        
    case 'hobbit'
        score1 = 20;
        
        switch facial
            case 1
                score2 = 20;
            otherwise
                score2 = 0;
        end
        
        if power >= 2
            score3 = 20;
        elseif power == 1
            score3 = 10;
        else
            score3 = 0;
        end
        
        if age > 20 && age < 50
            score4 = 20;
        else
            score4 = 0;
        end
        
        score = (score1 + score2 + score3 + score4);
        score = round(score .* 100)./80;
        
        if score >= 50
            out = sprintf('You have %0.2f%% odds of finding your soul mate in Middle Earth.',score);
        else
            out = sprintf('Your only shot at love would be a match made in Mordor.');
        end
        
    case 'man'
        score1 = 20;
        
        switch facial
            case 2
                score2 = 20;
            otherwise
                score2 = 10;
        end
        
        if power >= 2
            score3 = 20;
        elseif power == 1
            score3 = 10;
        else
            score3 = 0;
        end
        
        if age > 20 && age < 50
            score4 = 20;
        else
            score4 = 0;
        end
        
        score = (score1 + score2 + score3 + score4);
        score = round(score .* 100)./80;
        
        if score >= 50
            out = sprintf('You have %0.2f%% odds of finding your soul mate in Middle Earth.',score);
        else
            out = sprintf('Your only shot at love would be a match made in Mordor.');
        end
end
        