function out = tooManyTLAs(filename)
fh = fopen(filename, 'r'); % opens file
out = []; % appends first character of each line to out
line = fgets(fh); % access the first line
while ischar(line)
    out = [out line(1)]; % appends subsequent first characters of each line
    line = fgets(fh); % moves on to the next line
end

out = out(3:end); % removes the first two characters
fclose(fh);