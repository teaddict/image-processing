%'majority'
%Sets a pixel to 1 if five or more pixels in its 3-by-3 neighborhood are 1s; 
%otherwise, it sets the pixel to 0.
%
%'close'
%Performs morphological closing (dilation followed by erosion).
%kücük kiriklari ve uzun ince gecitleri birlestirir
%kücük delikleri yokeder ve hat uzerindeki araliklari doldurur
%
%'open'
%Performs morphological opening (erosion followed by dilation).
%dar gecitleri koparir
%kucuk cikintilari yok eder

I = imread('camera.jpg');
I = im2bw(I);

major = bwmorph(I,'majority');
open = bwmorph(I,'open');
close = bwmorph(I,'close');

subplot(1,3,1);imshow(major);title('majority filter');
          
subplot(1,3,2);imshow(open);title('open filter');

subplot(1,3,3);imshow(close);title('close filter');
         