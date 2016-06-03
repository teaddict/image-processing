%Read image to be filtered.

I = imread('parrot.jpg');

%Filter the image with a Gaussian filter with standard deviation of 2.
Iblur = imgaussfilt(I, 2);

%Display all results for comparison.

subplot(1,2,1),imshow(I),title('Original Image');
subplot(1,2,2),imshow(Iblur),title('Gaussian filtered image, \sigma = 2');