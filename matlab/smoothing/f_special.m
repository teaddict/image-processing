% h = fspecial(type)
% h = fspecial(type, parameters)
% Value	Description
% average	Averaging filter
% disk	Circular averaging filter (pillbox)
% gaussian	Gaussian lowpass filter
% laplacian	Laplacian of Gaussian filter
% motion	Approximates the linear motion of a camera
% prewitt	Prewitt horizontal edge-emphasizing filter
% sobel	Sobel horizontal edge-emphasizing filter

I = imread('parrot.jpg');
radius = 1;
J1 = fspecial('disk', radius);
K1 = imfilter(I,J1,'replicate');
radius = 10;
J10 = fspecial('disk', radius);
K10 = imfilter(I,J10,'replicate');
subplot(131);imshow(I);title('original');
subplot(132);imshow(K1);title('disk: radius=1');
subplot(133);imshow(K10);title('disk: radius=10');