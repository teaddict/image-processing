%filters

I = imread('parrot.jpg');

%laplace

%h = fspecial('average', hsize) returns an averaging filter h of size hsize. 
%The argument hsize can be a vector specifying the number of rows and columns in h,
%or it can be a scalar, in which case h is a square matrix. The default value for hsize is [3 3].

average = fspecial('average',[3 3]);

%h = fspecial('disk', radius) returns a circular averaging filter (pillbox) 
%within the square matrix of size 2*radius+1. The default radius is 5.

disk = fspecial('disk',5);

% h = fspecial('gaussian', hsize, sigma) returns a rotationally symmetric
% Gaussian lowpass filter of size hsize with standard deviation sigma(positive)
%hsize can be a vector specifying the number of rows and columns in h, or it can be a scalar, in which case h is a square matrix. 
%The default value for hsize is [3 3]; the default value for sigma is 0.5. Not recommended. Use imgaussfilt or imgaussfilt3 instead.

gauss = fspecial('gaussian');

%h = fspecial('laplacian', alpha) returns a 3-by-3 filter approximating the shape of the two-dimensional Laplacian operator. 
%The parameter alpha controls the shape of the Laplacian and must be in the range 0.0 to 1.0. The default value for alpha is 0.2.

laplacian = fspecial('laplacian');

ave = imfilter(I,average);
disc = imfilter(I,disk);
gau = imfilter(I,gauss);
lap = imfilter(I,laplacian);

subplot(151);imshow(I);title('original');
subplot(152);imshow(ave);title('average');
subplot(153);imshow(disc);title('disk');
subplot(154);imshow(gau);title('gauss');
subplot(155);imshow(lap);title('laplacian');