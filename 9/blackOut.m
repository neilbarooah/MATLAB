function blackOut(filename,wordList)
fh = fopen(filename, 'r'); % opens file
[name ext] = strtok(filename,'.'); % to get the name of the file
newFile = [name '_CENSORED' ext]; % created an updated file with same name
num_words = length(wordList);
finalList = [];
n = 0;
while n < length(wordList)
    word = wordList{n+1};
    finalList = [finalList {word}];
    n = n+1;
end
count = 0;
toReplace = [];
while count < length(finalList)
    word1 = finalList{count+1};
    star = strrep(word1,'q','*');
    star = strrep(star,'w','*');
    star = strrep(star,'e','*');
    star = strrep(star,'r','*');
    star = strrep(star,'t','*');
    star = strrep(star,'y','*');
    star = strrep(star,'u','*');
    star = strrep(star,'i','*');
    star = strrep(star,'o','*');
    star = strrep(star,'p','*');
    star = strrep(star,'l','*');
    star = strrep(star,'k','*');
    star = strrep(star,'h','*');
    star = strrep(star,'g','*');
    star = strrep(star,'f','*');
    star = strrep(star,'d','*');
    star = strrep(star,'s','*');
    star = strrep(star,'a','*');
    star = strrep(star,'z','*');
    star = strrep(star,'x','*');
    star = strrep(star,'c','*');
    star = strrep(star,'v','*');
    star = strrep(star,'b','*');
    star = strrep(star,'n','*');
    star = strrep(star,'m','*');
    star = strrep(star,'M','*');
    star = strrep(star,'N','*');
    star = strrep(star,'B','*');
    star = strrep(star,'V','*');
    star = strrep(star,'C','*');
    star = strrep(star,'X','*');
    star = strrep(star,'Z','*');
    star = strrep(star,'S','*');
    star = strrep(star,'A','*');
    star = strrep(star,'D','*');
    star = strrep(star,'F','*');
    star = strrep(star,'G','*');
    star = strrep(star,'H','*');
    star = strrep(star,'J','*');
    star = strrep(star,'K','*');
    star = strrep(star,'L','*');
    star = strrep(star,'P','*');
    star = strrep(star,'O','*');
    star = strrep(star,'I','*');
    star = strrep(star,'U','*');
    star = strrep(star,'Y','*');
    star = strrep(star,'T','*');
    star = strrep(star,'R','*');
    star = strrep(star,'E','*');
    star = strrep(star,'W','*');
    star = strrep(star,'Q','*');
    star = strrep(star,'1','*');
    star = strrep(star,'2','*');
    star = strrep(star,'3','*');
    star = strrep(star,'4','*');
    star = strrep(star,'5','*');
    star = strrep(star,'6','*');
    star = strrep(star,'7','*');
    star = strrep(star,'8','*');
    star = strrep(star,'9','*');
    star = strrep(star,'0','*');
    star = strrep(star,'-','*');
    star = strrep(star,'_','*');
    star = strrep(star,'+','*');
    star = strrep(star,'+','*');
    star = strrep(star,'[','*');
    star = strrep(star,'{','*');
    star = strrep(star,']','*');
    star = strrep(star,'}','*');
    star = strrep(star,'\','*');
    star = strrep(star,'|','*');
    star = strrep(star,';','*');
    star = strrep(star,':','*');
    star = strrep(star,'"','*');
    star = strrep(star,'/','*');
    star = strrep(star,'?','*');
    star = strrep(star,'>','*');
    star = strrep(star,'.','*');
    star = strrep(star,'<','*');
    star = strrep(star,',','*');
    star = strrep(star,'`','*');
    star = strrep(star,'~','*');
    toReplace = [toReplace {star}];
    count = count+1;
end
counter = 0;
paired = [];
while counter < length(toReplace)
    paired = [paired {[{finalList{counter+1}} {toReplace{counter+1}}]}];
    counter = counter+1;
end

line = fgets(fh);
while ischar(line)
    newLine = regexprep(line,finalList{1},toReplace{1},'ignorecase');
    newLines = {newLine};
    p = 2;
    while p -1 < length(finalList)
        newLine = regexprep(newLine,finalList{p},toReplace{p},'ignorecase');
        newLines = [newLines {newLine}];
        p = p + 1;
    end
    fh2 = fopen(newFile,'a');
    fprintf(fh2,newLines{p-1});
    fclose(fh2);
    line = fgets(fh);
end

