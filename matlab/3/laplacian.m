%a read cameraman
OriginalPic = imread('cameraman.tif');

%b Laplacian filter of cameraman (a)
Laplace = fspecial('laplacian');
LaplaceFiltered = imfilter(OriginalPic,Laplace);
subplot(2,2,1);imshow(filtered); title('Laplacian Filtered Image');

%c Sharpened version of bone scan achieved by subtracting (a) and (b)
SharpenedPic = imsubtract(OriginalPic,LaplaceFiltered);

%sharp işlemi için extra kod
S = fspecial('unsharp');
sharpened = imfilter(OriginalPic,S);
subplot(2,2,2);imshow(sharpened);title('Sharpened Image');

%d Sobel filter of bone scan (a)
sobel = fspecial('sobel');
SobelFiltered = imfilter(OriginalPic,sobel);

%e Image (d) smoothed with a 5*5 averaging filter
Average = fspecial('average',[5 5]);
AverageFiltered = imfilter(SobelFiltered,Average);

%f The product of (c) SharpenedPic and (e) AverageFiltered which will be used as a mask
SharpenedPicMask = OriginalPic;
SharpenedPicMask(~SharpenedPic) = 0;

AverageFilteredMask = OriginalPic;
AverageFilteredMask(~AverageFiltered) = 0;

%g Sharpened image which is sum of (a) and (f)
SumWithSharpenedPicMask = imadd(OriginalPic,SharpenedPicMask);
SumWithAverageFilteredPicMask = imadd(OriginalPic,AverageFilteredMask);

%h Result of applying a power-law trans. to (g)
%Power Law Transformation
clc;
clear all
close all
a=OriginalPic;
b=rgb2gray(a);
gamma=.9;
d1=double(a).^gamma;
figure, imshow(uint8(d1)),title('Powerlaw transformation with gamma=0.9');

%i Compare the original and final images
