function wheresWaldo(fn1,fn2)

img1 = imread(fn1);
img2 = imread(fn2);
[a b l1] = size(img1);
[c d l2] = size(img2);

img3 = double(img1);
gray_vals = round((img3(:,:,1) + img3(:,:,2) + img3(:,:,3))./3);
img3(:,:,1) = gray_vals;
img3(:,:,2) = gray_vals;
img3(:,:,3) = gray_vals;
backg = uint8(img3);

img4 = double(img2);
gray_vals = (img4(:,:,1) + img4(:,:,2) + img4(:,:,3))./3;
img4(:,:,1) = gray_vals;
img4(:,:,2) = gray_vals;
img4(:,:,3) = gray_vals;
waldo = uint8(img4)

num_rows = a./c
num_cols = b./d

red1 = waldo(:,:,1);
red1 = double(red1);
green1 = waldo(:,:,2);
green1 = double(green1);
blue1 = waldo(:,:,3);
blue1 = double(blue1);

for k = 1:a-c
    for l = 1:b-d
        red = backg(k:k+a/num_rows-1,l:l+b/num_cols-1,1);
        red = double(red);
        diff1 = abs(red-red1);
        max1 = max(max(diff1));
        
        green = backg(k:k+a/num_rows-1,l:l+b/num_cols-1,2);
        green = double(green);
        diff2 = abs(green-green1);
        max2 = max(max(diff2));
        
        blue = backg(k:k+a/num_rows-1,l:l+b/num_cols-1,3);
        blue = double(blue);
        diff3 = abs(blue-blue1);
        max3 = max(max(diff3));
        
        if max1 <= 100 & max2 <= 100 & max3 <= 100
            
            backg(k:k+a/num_rows-1,l:l+b/num_cols-1,1) = img2(:,:,1)
            backg(k:k+a/num_rows-1,l:l+b/num_cols-1,2) = img2(:,:,2)
            backg(k:k+a/num_rows-1,l:l+b/num_cols-1,3) = img2(:,:,3);
            break
        end
    end
end

[name ext] = strtok(fn1, '.')
new_name = [name '_foundhim' ext]
imwrite(backg,new_name)
