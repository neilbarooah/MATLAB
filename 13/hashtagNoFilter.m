function hashtagNoFilter(top,bottom,blend)
img1 = imread(top);
img2 = imread(bottom);
name1 = strtok(top, '.');
name2 = strtok(bottom,'.');
new = [name1 '_' name2 '_' blend '.png'];
r1 = img1(:,:,1);
r1 = double(r1);
r1 = r1./255;
r2 = img2(:,:,1);
r2 = double(r2);
r2 = r2./255;
g1 = img1(:,:,2);
g1 = double(g1);
g1 = g1./255;
g2 = img2(:,:,2);
g2 = double(g2);
g2 = g2./255;
b1 = img1(:,:,3);
b1 = double(b1);
b1 = b1./255;
b2 = img2(:,:,3);
b2 = double(b2);
b2 = b2./255;
switch blend
    case 'multiply'
        r = 255.*(r1 .* r2);
        r = uint8(r);
        g = 255.*(g1 .* g2);
        g = uint8(g);
        b = 255.*(b1 .* b2);
        b = uint8(b);
        out = cat(3,r,g,b);
        imwrite(out, new);
    case 'screen'
        r = 1 - ((1-r1) .* (1-r2));
        r = 255 .* r;
        r = uint8(r);
        g = 1 - ((1-g1) .* (1-g2));
        g = 255 .* g;
        g = uint8(g);
        b = 1 - ((1-b1) .* (1-b2));
        b = 255 .* b;
        b = uint8(b);
        out = cat(3,r,g,b);
        imwrite(out, new);
    case 'overlay'
        r2 = img2(:,:,1);
        r2 = double(r2);
        
        g2 = img2(:,:,2);
        g2 = double(g2);
        
        b2 = img2(:,:,3);
        b2 = double(b2);
        
        lum = ((0.3 .* r2) + (0.59 .* g2) + (0.11 .* b2))./255;
        change1 = lum < 0.5
        mask1 = cat(3,change1,change1,change1);
        change2 = lum >= 0.5
        mask2 = cat(3,change2,change2,change2);
        
        r2 = r2./255;
        g2 = g2./255;
        b2 = b2./255;
        
        r3 = 255 .* (2 .* r1 .* r2);
        r4 = 255 .* (1 - (2 .* (1-r1) .* (1-r2)));
        r3 = uint8(r3);
        r4 = uint8(r4);
        g3 = 255 .* (2 .* g1 .* g2);
        g4 = 255 .* (1 - (2 .* (1-g1) .* (1-g2)));
        g3 = uint8(g3);
        g4 = uint8(g4);
        b3 = 255 .* (2 .* b1 .* b2);
        b4 = 255 .* (1 - (2 .* (1-b1) .* (1-b2)));
        b3 = uint8(b3);
        b4 = uint8(b4);
       
        out1 = cat(3,r3,g3,b3);
        out2 = cat(3,r4,g4,b4);
        img1(mask1) = out1(mask1);
        img1(mask2) = out2(mask2);

        imwrite(img1,new);
end