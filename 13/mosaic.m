function mosaic(filename,num)
img = imread(filename);
[r c layer] = size(img);
smallrow = round(linspace(1,r,r./num));
smallcol = round(linspace(1,c,c./num));
tile = img(smallrow,smallcol,:);

for i = 1:r/num:r
    for j = 1:c/num:c
        img1(i:i+r/num-1,j:j+c/num-1,1) = tile(:,:,1);
        img1(i:i+r/num-1,j:j+c/num-1,2) = tile(:,:,2);
        img1(i:i+r/num-1,j:j+c/num-1,3) = tile(:,:,3);
    end
end

for k = 1:r/num:r
    for l = 1:c/num:c
        red = img(k:k+r/num-1,l:l+c/num-1,1);
        red1 = img1(k:k+r/num-1,l:l+c/num-1,1);
        
        red = double(red);
        red1 = double(red1);
        len = length(red);
        red = (sum(sum(red))./len)./len;
        red1 = (sum(sum(red1))./len)./len;
        redred = (red1+red)./2;
        redred = uint8(redred);
        
        green = img(k:k+r/num-1,l:l+c/num-1,2);
        green1 = img1(k:k+r/num-1,l:l+c/num-1,2);
        green = double(green);
        green1 = double(green1);
        green = (sum(sum(green))./len)./len;
        green1 = (sum(sum(green1))./len)./len;
        greengreen = (green+green1)./2;
        greengreen = uint8(greengreen);

        blue = img(k:k+r/num-1,l:l+c/num-1,3);
        blue1 = img1(k:k+r/num-1,l:l+c/num-1,3);
        blue = double(blue);
        blue1 = double(blue1);
        blue = (sum(sum(blue))./len)./len;
        blue1 = (sum(sum(blue1))./len)./len;
        blueblue = (blue+blue1)./2;
        blueblue = uint8(blueblue);
       
        img2(k:k+r/num-1,l:l+c/num-1,1) = redred;
        img2(k:k+r/num-1,l:l+c/num-1,2) = greengreen;
        img2(k:k+r/num-1,l:l+c/num-1,3) = blueblue;
    end
end

for k = 1:r/num:r
    for l = 1:c/num:c
        red = img2(k:k+r/num-1,l:l+c/num-1,1);
        red1 = img1(k:k+r/num-1,l:l+c/num-1,1);
        red = double(red);
        red1 = double(red1);
        len = length(red);
        red2 = (red + red1)./2;
        redred = uint8(red2);
        
        green = img2(k:k+r/num-1,l:l+c/num-1,2);
        green1 = img1(k:k+r/num-1,l:l+c/num-1,2);
        green = double(green);
        green1 = double(green1);
        green2 = (green + green1)./2;
        greengreen = uint8(green2);

        blue = img2(k:k+r/num-1,l:l+c/num-1,3);
        blue1 = img1(k:k+r/num-1,l:l+c/num-1,3);
        blue = double(blue);
        blue1 = double(blue1);
        blue2 = (blue + blue1)./2;
        blueblue = uint8(blue2);
       
        img3(k:k+r/num-1,l:l+c/num-1,1) = redred;
        img3(k:k+r/num-1,l:l+c/num-1,2) = greengreen;
        img3(k:k+r/num-1,l:l+c/num-1,3) = blueblue;
    end
end

[name ext] = strtok(filename,'.');
number = num2str(num);
num1 = [number 'X' number];
new_name = [name num1 ext];
imwrite(img3,new_name);