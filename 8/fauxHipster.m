function [level] = fauxHipster(filename1,filename2)
fh = fopen(filename2, 'r'); % opens file
line = fgetl(fh); % first line of file
hip = {}; % to arrange in the form of a cell array
i = 0; % counts the total numer of hip words
while ischar(line)
    hip = [hip line]; % all words from the list
    line = fgetl(fh); % moves to next line
    i = i+1; 
end 
start = 0;
level = 0;
while start < i
    fh2 = fopen(filename1, 'r'); % opens conversation
    line2 = fgetl(fh2); % first line of conversation
    while ischar(line2);
        line2(line2 == char(39)) = []; % removes quotation marks
        line2 = lower(line2); % lowercase of all letters/NOT case-sensitive
        [first total] = strsplit(line2,hip(start+1)); % total would contain elements if the particular hip word considered is contained in line2
        level = level + length(total); % keeps count of hip words
        line2 = fgetl(fh2); % moves to next line
    end
    fclose(fh2); % very important to close the file and reopen again
    start = start+1; % moves to the next hip word and repeats until last word
end
fh3 = fopen(filename1, 'r'); % opens conversation
line3 = fgetl(fh3); % first line of conversation
while ischar(line3)
    line3(line3 == char(39)) = []; % removes quotation marks
    hash = length(findstr(line3,'#')); % gives the total number of hashtags
    level = level + hash; % adds number of hashtags to total number of hip words that appear
    line3 = fgetl(fh3); % moves to next line
end

fclose(fh); % closes conversation file
fclose(fh3); % closes conversation file