function [out] = checkImage(fn1,fn2)
img1 = imread(fn1);
img2 = imread(fn2);
[row1 col1 layer1] = size(img1);
[row2 col2 layer2] = size(img2);
if row1 == row2 && col1 == col2
    r1 = img1(:,:,1);
    r1 = double(r1);
    r2 = img2(:,:,1);
    r2 = double(r2);
    g1 = img1(:,:,2);
    g1 = double(g1);
    g2 = img2(:,:,2);
    g2 = double(g2);
    b1 = img1(:,:,3);
    b1 = double(b1);
    b2 = img2(:,:,3);
    b2 = double(b2);
    if all(r1 == r2) & all(g1==g2) & all(b1 == b2)
        out = 'The images are the same.';
    else
        out = 'The RGB values are different.';
        mask1 = r1 == r2;
        mask2 = g1 == g2;
        mask3 = b1 == b2;
        fullmask = mask1 & mask2 & mask3;
        full = cat(3,fullmask,fullmask,fullmask);
        img1(:,:,:) = uint8(0);
        img1(full) = uint8(255);
        name1 = strtok(fn1,'.');
        new_name = [name1 'VS' fn2];
        imwrite(img1,new_name);
    end
else
    out = 'The images have different dimensions.';
end
        