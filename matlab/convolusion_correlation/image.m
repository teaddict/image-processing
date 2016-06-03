%Create a sample matrix.
I = imread('camera.jpg');
A = double(I);
%Create a filter.

h = ones(3);

%Filter using correlation, the default.
correlation = imfilter(A,h);

%Filter using convolution, using the parameter.

convolution = imfilter(A,h,'conv');


subplot(1,2,1),imshow(correlation),title('correlation');
subplot(1,2,2),imshow(convolution),title('convolution');