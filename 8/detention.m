function out = detention(filename, sentence)
fh = fopen(filename, 'r');
outcome = 0;
line = fgetl(fh);
counter = 0;
while ischar(line)
    result = strcmp(line,sentence);
    if result == true
        outcome = outcome + 1;
    else
        outcome = outcome + 0;
    end
    line = fgetl(fh); 
    counter = counter + 1;
end

if counter == outcome
    out = sprintf('Good job. You are free to go!');
else
    out = sprintf('Not so fast... Start all over!');
end
fclose(fh);