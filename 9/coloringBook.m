function coloringBook(filename,colors)
[num text raw] = xlsread(colors)
color = []
red = []
green = []
blue = []
[a b] = size(num)
for i = 1:a
    color = [color text(i+1,1)]
    red = [red num(i,1)]
    green = [green num(i,2)]
    blue = [blue num(i,3)]
end
        
