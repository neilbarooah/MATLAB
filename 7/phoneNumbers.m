function [total] = phoneNumbers(filename)
%fh = fopen(filename)
[name ext] = strtok(filename,'.')
newFile = [name '_updated' ext]
%fh2 = fopen(newFile, 'w')
%line = fgets(fh)
%while ischar(line)
    %[word rest] = strtok(line,'(')
    %nums = []
    %i = 1
    %if i <= length(rest)
     %   nums = rest(i)
     %   i = i+1
    %end
%end
fclose(fh);
    
        