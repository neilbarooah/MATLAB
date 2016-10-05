function result = rPSL(player1, player2)

[name1, move1] = strtok(player1, '-');
[name2, move2] = strtok(player2, '-');
move1(1) = [];
move2(1) = [];


switch move1
    case 'Rock'
        
        switch move2
            case 'Rock'
                result = 'Tie, try again.';
            case 'Paper'
                result = sprintf('%s beats rock. %s wins.',move2,name2);
            case 'Scissors'
                result = sprintf('%s beats scissors. %s wins.',move1,name1);
            case 'Love'
                result = sprintf('Love conquers all! %s wins.',name2);
        end
        
    case 'Paper'
        switch move2
            case 'Rock'
                result = sprintf('%s beats rock. %s wins.',move1,name1);
                
            case 'Paper'
                result = sprintf('Tie, try again.');
            case 'Scissors'
                result = sprintf('%s beats paper. %s wins.',move2,name2);
            case 'Love'
                result = sprintf('Love conquers all! %s wins.',name2);   
        end
        
    case 'Scissors'
        switch move2
            case 'Rock'
                result = sprintf('%s beats scissors. %s wins.',move2,name2);
            case 'Paper'
                result = sprintf('%s beats paper. %s wins.',move1,name1);
            case 'Scissors'
                result = sprintf('Tie, try again.');
            case 'Love'
                result = sprintf('Love conquers all! %s wins.',name2);
             
        end
        
    case 'Love'
        switch move2
            case 'Rock'
               result = sprintf('Love conquers all! %s wins.',name1);
            case 'Paper'
               result = sprintf('Love conquers all! %s wins.',name1);
            case 'Scissors'
               result = sprintf('Love conquers all! %s wins.',name1);
            case 'Love'
               result = sprintf('Love conquers all! %s and %s both win.',name1,name2);
             
        end
        
end