function [total] = phoneNumbers(filename)
fh = fopen(filename); % opens file
[name ext] = strtok(filename,'.'); % to get the name of the file
newFile = [name '_updated' ext]; % created an updated file with same name
fh2 = fopen(newFile, 'w'); % open updated file to write on
line = fgetl(fh); % gets first line of original file
count = 0; % total number of valid contacts
while ischar(line)
    [word rest] = strtok(line,'('); % separates the name and number
    word = strtok(word,';'); % gives the name of the contact
    word = strrep(word,' ',''); % removes extraneous spaces
    nums = [];
    i = 0;
    while i < length(rest); % there should be a total of 14 characters
        nums = [nums str2num(rest(i+1))]; % concatenates each numer upto ')'
        i = i+1; 
    end
    if length(nums) == 10 && rest(5) == '-' && rest(9) == '-' && rest(1) == '(' && rest(14) == ')' && length(rest) == 14 % conditions set for proper format
        if count > 0
            fprintf(fh2,'\n%s; %s',word, rest); % move to next line before printing
            count = count + 1;
        else
            fprintf(fh2,'%s; %s',word, rest); % print on first line
            count = count + 1;
        end
    end  
    line = fgetl(fh); % move to next line of the original file
end
fclose(fh); % close original file
fclose(fh2); % close updated file
total = count; % total count of valid phone numbers   
        