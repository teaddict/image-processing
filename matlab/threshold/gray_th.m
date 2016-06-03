I = imread('coins.png');
level = graythresh(I)
%level = graythresh(I) computes a global threshold (level) that can be used to convert an intensity image to a binary image with im2bw. 
%level is a normalized intensity value that lies in the range [0, 1].
BW = im2bw(I,level);
imshow(BW);