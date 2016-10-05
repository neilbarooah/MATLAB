function [message] = ottendorf(passage,cipher)
fh = fopen(cipher); % opens cipher file 
line = fgetl(fh); % gets first line
end_condition = '0-0-0-0'; % ending condition
message = []; % concatenates secret message
while ~strcmp(line,end_condition) % CANNOT use ischar(line) as there are empty lines
    if isempty(line)
        message = [message ' ']; % replace empty string with spaces
    elseif strcmp(line,':')
        message = [message ':']; % places correct punctuation
    elseif strcmp(line,'.')
        message = [message,'.']; % places correct punctuation
    elseif strcmp(line,',') 
        message = [message,',']; % places correct punctuation
    elseif strcmp(line,'?') 
        message = [message,'?']; % places correct punctuation
    elseif strcmp(line,'!') 
        message = [message,'!']; % places correct punctuation
    elseif strcmp(line,'-') 
        message = [message,'-']; % places correct punctuation
    elseif strcmp(line,'#') 
        message = [message,'#']; % places correct punctuation
    elseif strcmp(line,'$') 
        message = [message,'$']; % places correct punctuation
    elseif strcmp(line,'%') 
        message = [message,'%']; % places correct punctuation
    elseif strcmp(line,'^') 
        message = [message,'^']; % places correct punctuation
    elseif strcmp(line,'&') 
        message = [message,'&']; % places correct punctuation
    elseif strcmp(line,'*') 
        message = [message,'*']; % places correct punctuation
    elseif strcmp(line,'(') 
        message = [message,'(']; % places correct punctuation
    elseif strcmp(line,')') 
        message = [message,')']; % places correct punctuation
    elseif strcmp(line,'_') 
        message = [message,'_']; % places correct punctuation
    elseif strcmp(line,'+') 
        message = [message,'+']; % places correct punctuation
    elseif strcmp(line,'=') 
        message = [message,'=']; % places correct punctuation
    elseif strcmp(line,'{') 
        message = [message,'{']; % places correct punctuation
    elseif strcmp(line,'[') 
        message = [message,'[']; % places correct punctuation
    elseif strcmp(line,']') 
        message = [message,']']; % places correct punctuation
    elseif strcmp(line,'}') 
        message = [message,'}']; % places correct punctuation
    elseif strcmp(line,'\') 
        message = [message,'\']; % places correct punctuation
    elseif strcmp(line,'|') 
        message = [message,'|']; % places correct punctuation
    elseif strcmp(line,';') 
        message = [message,';']; % places correct punctuation
    elseif strcmp(line,'"') 
        message = [message,'"']; % places correct punctuation
    elseif strcmp(line,'<') 
        message = [message,'<']; % places correct punctuation
    elseif strcmp(line,'>') 
        message = [message,'>']; % places correct punctuation
    elseif strcmp(line,'/') 
        message = [message,'/']; % places correct punctuation
    elseif strcmp(line,'~') 
        message = [message,'~']; % places correct punctuation
    elseif strcmp(line,'`') 
        message = [message,'`']; % places correct punctuation
    elseif strcmp(line,char(39))
        message = [message, char(39)]; % removes quotes
    else
        [passage_num rest] = strtok(line,'-'); % to get passage number
        passage_name = [passage '_' passage_num '.txt']; % get the file name
        [line_num rest1] = strtok(rest,'-'); % obtain line number
        line_num = str2num(line_num); % convert string to double
        [word rest2] = strtok(rest1,'-'); % obtain word number
        word = str2num(word); % convert string to double
        [word_num rest3] = strtok(rest2,'-'); % obtain index of the selected word
        word_num = str2num(word_num); % convert string to double
        fh2 = fopen(passage_name); % access the file required (reference)
        line2 = fgetl(fh2); % gets the first line
        line_counter = 0; % counts line until line_num reached
        needed_line = []; % concatenates the right line to this
        while line_counter < line_num
            needed_line = line2;
            line_counter = line_counter + 1;
            line2 = fgetl(fh2); % moves to next line until line_num reached
        end
        fclose(fh2); % closes reference file
        spaces = word; % count the number of spaces
        counter = 0;
        needed_word = [];
        while counter < spaces;
            [second third] = strtok(needed_line,' '); % separates first word from the rest
            needed_word = strrep(second,' ',''); % removes spaces from the first word
            needed_line = third; % this is done so that strtok can be used on the remaining part until correct word reached
            counter = counter + 1; % runs code until correct word reached
        end
        message = [message needed_word(word_num)]; % concatenates letter to the secret message
    end
    line = fgetl(fh); % moves to next line of cipher, keeps going until 0-0-0-0(ending condition) reached
end
fclose(fh); % closes cipher file