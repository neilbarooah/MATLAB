function coloringBook(filename,colors)
[num text raw] = xlsread(colors);
color = [];
red = [];
green = [];
blue = [];
[a b] = size(num);
for i = 1:a
    color = [color text(i+1,1)];
    red = [red num(i,1)];
    green = [green num(i,2)];
    blue = [blue num(i,3)];
end
%[c d] = size(num)
img = imread(filename);
[r c layer] = size(img);
for rows = 1:2:r
    for cols = 1:2:c
        %r1 = double(img(rows,cols,1));
        %r2 = double(img(rows,cols+1,1));
        %r3 = double(img(rows+1,cols,1));
        %r4 = double(img(rows+1,cols+1,1));
        %g1 = double(img(rows,cols,2));
        %g2 = double(img(rows,cols+1,2));
        %g3 = double(img(rows+1,cols,2));
        %g4 = double(img(rows+1,cols+1,2));
        %b1 = double(img(rows,cols,3));
        %b2 = double(img(rows,cols+1,3));
        %b3 = double(img(rows+1,cols,3));
        %b4 = double(img(rows+1,cols+1,3));
        %red1 = (r1 + r2 + r3 + r4)./4;
        %green1 = (g1 + g2 + g3 + g4)./4;
        %blue1 = (b1 + b2 + b3 + b4)./4;
        r = img(rows:rows+1,cols:cols+1,1);
        r = double(r);
        r = sum(sum(r))./4;
        g = img(rows:rows+1,cols:cols+1,2);
        g = double(g);
        g = sum(sum(g))./4;
        b = img(rows:rows+1,cols:cols+1,3);
        b = double(b);
        b = sum(sum(b))./4;
        distance = [];
        k = 0;
        for j = 1:a
            distance = [distance [sqrt((red(j) - r).^2 + (green(j) - g).^2 + (blue(j) - b).^2)]];
            k = k + 1;
        end
        [dist ind] = min(distance);
        red2 = red(ind);
        red2 = uint8(red2);
        green2 = green(ind);
        green2 = uint8(green2);
        blue2 = blue(ind);
        blue2 = uint8(blue2);
        img(rows:rows+1,cols:cols+1,1) = red2;
        img(rows:rows+1,cols:cols+1,2) = green2;
        img(rows:rows+1,cols:cols+1,2) = blue2;
        %out = cat(3,red2,green2,blue2);
        %img(rows,cols,:) = out;
        %img(rows+1,cols,:) = out
        %img(rows,cols+1,:) = out;
        %img(rows+1,cols+1,:) = out;
    end
end
[name ext] = strtok(filename,'.');
new_name = [name '_retro' ext];
imwrite(img,new_name);
