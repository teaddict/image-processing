%Read image and convert it to grayscale.
RGB = imread('gantrycrane.png');
I  = rgb2gray(RGB);
%Extract edges.

BW = edge(I,'canny');

%Calculate the Hough transform.
[H] = houghtf(BW);

%Display the Hough transform.

figure
imshow(imadjust(mat2gray(H)));
title('Limited Theta Range Hough Transform of Gantrycrane Image');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal;
colormap(hot)