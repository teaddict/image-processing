%a read cameraman
OriginalPic = imread('cameraman.jpg');

%b Laplacian filter of cameraman (a)
Laplace = fspecial('laplacian');
LaplaceFiltered = imfilter(OriginalPic,Laplace);
subplot(2,5,1);imshow(LaplaceFiltered); title('Laplacian Filtered Image');

%c Sharpened version of bone scan achieved by subtracting (a) and (b)
SharpenedPic = imsubtract(OriginalPic,LaplaceFiltered);
subplot(2,5,2);imshow(SharpenedPic); title('Sharpened Image');

%c sharp islemi icin extra kod
S = fspecial('unsharp');
sharpened = imfilter(OriginalPic,S);
subplot(2,5,3);imshow(sharpened);title('Sharpened Image 2');

%d Sobel filter of bone scan (a)
sobel = fspecial('sobel');
SobelFiltered = imfilter(OriginalPic,sobel);
subplot(2,5,4);imshow(SobelFiltered);title('SobelFiltered Image');


%e Image (d) smoothed with a 5*5 averaging filter
Average = fspecial('average',[5 5]);
AverageFiltered = imfilter(SobelFiltered,Average);
subplot(2,5,5);imshow(AverageFiltered);title('AverageFiltered Image');

%f The product of (c) SharpenedPic and (e) AverageFiltered which will be used as a mask
Mask = immultiply(AverageFiltered,SharpenedPic);
AfterMask = OriginalPic;
AfterMask(~Mask) = 0;

%g Sharpened image which is sum of (a) and (f)
SumOfAF = imadd(OriginalPic,AfterMask);

subplot(2,5,6);imshow(SumOfAF);title('Sharpened(A+F) Image');
%subplot(2,5,7);imshow(SumWithAverageFilteredPicMask);title('SumWithAverageFilteredPicMask Image');

%h Result of applying a power-law trans. to (g)
%Power Law Transformation
a=SumOfAF;
gamma=.9;
d1=double(a).^gamma;
subplot(2,5,7);imshow(uint8(d1));title('Powerlaw transformation with gamma=0.9');

%i compare original and final images
subplot(2,5,8);imshow(OriginalPic);title('Original Pic');
subplot(2,5,9);imshow(uint8(d1));title('Final Pic');
