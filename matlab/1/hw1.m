% bit plane nedir?
% With this technique, the valid bits from gray scale images can be separated,
% and it will be useful for processing these data in very less time complexity.

clc;
clear all;
close all;
im = imread('face.jpg');

% get all bit planes
bit1 = bitget(im, 1);  
bit2 = bitget(im, 2);
bit3 = bitget(im, 3);   
bit4 = bitget(im, 4);
bit5 = bitget(im, 5);   % 
bit6 = bitget(im, 6);
bit7 = bitget(im, 7);   %
bit8 = bitget(im, 8);

bit1 = double(not(bit1));
bit3 = double(not(bit3));
bit5 = double(not(bit5));
bit7 = double(not(bit7));

%ilk goruntuyu olustur
firstImage = [bit1;bit3;bit5;bit7];

bit1 = double(not(bit1));
bit3 = double(not(bit3));
bit5 = double(not(bit5));
bit7 = double(not(bit7));

%ikinci goruntuyu olustur
secondImage = [bit1;bit3;bit5;bit7];

%ekrana bastır
%subplot(m,n,p) divides the current figure into an m-by-n grid
subplot(1, 2, 1), imshow(firstImage, []), title('first image');
subplot(1, 2, 2), imshow(secondImage, []), title('second image');
