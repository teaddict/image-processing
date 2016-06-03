I= imread('camera.jpg');
%Gaussian white noise with constant mean and variance
noise_image = imnoise(I, 'gaussian', 0 , 100);
% It presents itself as sparsely occurring white and black pixels. 
salt_pepper= imnoise(I,'salt & pepper',0.02);

gauss = fspecial('gaussian');
gau = imfilter(noise_image,gauss);

median_filter = medfilt2(salt_pepper);


subplot(1,5,1),imshow(noise_image),title('gaussian noise');
subplot(1,5,2),imshow(salt_pepper),title('salt&pepper noise');
subplot(1,5,3),imshow(gau),title('gauss filter');
subplot(1,5,4),imshow(median_filter),title('median filter');
