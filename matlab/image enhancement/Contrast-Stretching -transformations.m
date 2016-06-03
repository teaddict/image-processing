% Contrast-Stretching Transformations

% Contrast-stretching transformations increase the contrast between the darks and the lights. 
% g=1./(1 + (m./(double(f) + eps)).^E)
% E controls the slope of the function and m is the mid-line where you want to switch from dark values to light values. 
% eps is a MATLAB constant that is the distance between 1.0 and the next largest number that can be represented in double-precision floating point.

% The m value used below is the mean of the image intensities (0.2104). 
% At very high E values, such as 10, the function becomes more like a thresholding function with threshold m—the resulting image is 
% more black and white than grayscale.

I=imread('parrot.jpg');
I2=im2double(I);
m=mean2(I2)
contrast1=1./(1+(m./(I2+eps)).^4);
contrast2=1./(1+(m./(I2+eps)).^5);
contrast3=1./(1+(m./(I2+eps)).^10);

subplot(1,4,1),imshow(I2);
subplot(1,4,2),imshow(contrast1);
subplot(1,4,3),imshow(contrast2);
subplot(1,4,4),imshow(contrast3);

