%Dilation
%The value of the output pixel is the maximum value of all the pixels in 
%the input pixel's neighborhood.
%In a binary image, if any of the pixels is set to the value 1, the output pixel is set to 1.

I = imread('camera.jpg');
I = im2bw(I);

dilate = [0,1,0;
          1,1,1;
          0,1,0];

result = imdilate(I,dilate);

imshow(result);
          
         