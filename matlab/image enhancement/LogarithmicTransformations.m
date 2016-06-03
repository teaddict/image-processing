% Logarithmic Transformations
% Logarithmic Transformations can be used to brighten the intensities of an image (like the Gamma Transformation, where gamma < 1). 
% More often, it is used to increase the detail (or contrast) of lower intensity values.

% g = c*log(1 + double(I))
%the higher the c, the brighter the image will appear. 

I=imread('parrot.jpg');
imshow(I)
I2=im2double(I);
J=1*log(1+I2);
J2=2*log(1+I2);
J3=5*log(1+I2);
subplot(1,4,1),imshow(I);
subplot(1,4,2),imshow(J);
subplot(1,4,3),imshow(J2);
subplot(1,4,4),imshow(J3);
