% Histogram Equalization


pout=imread('camera.jpg'); 
%imshow(pout);
%pout=rgb2gray(pout);
% imhist(I) calculates the histogram for the intensity image I and displays a plot of the histogram. 
% The number of bins in the histogram is determined by the image type.
figure, imhist(pout),title('before hist eq');
pout_eq=histeq(pout); 
%figure, imshow(pout_eq);
figure, imhist(pout_eq),title('after hist eq');
pout_last=histeq(pout_eq); 

figure, imhist(pout_last),title('second hist eq');