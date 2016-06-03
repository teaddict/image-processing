%Erosion
%The value of the output pixel is the minimum value of all the pixels 
%in the input pixel's neighborhood. 
%In a binary image, if any of the pixels is set to 0, the output pixel is set to 0.

I = imread('camera.jpg');
I = im2bw(I);

erosion = [0,1,0;
          1,1,1;
          0,1,0];

result = imerode(I,erosion);

imshow(result);