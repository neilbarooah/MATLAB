function [array] = colorScreen(foreground,background,vec)
imgF = imread(foreground);
imgB = imread(background);
fR = imgF(:,:,1);
fG = imgF(:,:,2);
fB = imgF(:,:,3);
gR = imgB(:,:,1);
gG = imgB(:,:,2);
gB = imgB(:,:,3);
maskR = fR == vec(1);
maskG = fG == vec(2);
maskB = fB == vec(3);
fullmask = maskR & maskG & maskB;
full = cat(3,fullmask,fullmask,fullmask);
imgF(full) = imgB(full);
array = imgF;
end