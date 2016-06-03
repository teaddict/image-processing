I = imread('camera.jpg');

%entropy
e = entropy(I)

%average number of bits per pixel
c = class(I)
%bits per pixel is 8 divided by the compression ratio . 
%For example, if the compression ratio is 5:2 then bits per pixel is 8/(5/2)
%1/ratio * 100 is going to give you the percentage of the original that is now needed.
%For example ratio 8, take 1 over that to get 1/8 which is 0.125, 
%multiply by 100 so you are down to 12.5% of the original. 
%And subtract that from 100 to see that you have compressed by 87.5%



% 256*256 image with 256 gray levels
% 36244 bits are used
% what is ratio
ratio = calculate_ratio(256,256,8,36244)

%In an image compression system, 65,536 bits are used to represent a 512×512
%image with 256 gray levels. What is the compression ratio for this system?

ratio = calculate_ratio(512,512,8,65536)

%In an image compression system, 6686 bits are used to represent a 128x128 image
%with 256 gray levels. What is the compression ratio for this system?  
ratio = calculate_ratio(128,128,8,6686)


%  Generally, transmission is accomplished in packets consisting a start bit, 
%  a byte (8 bits) of information, and a stop bit. Using these facts, 
%  how many minutes would it take to transmit a 1024x1024 image with 256 gray levels 
%  using a 56K baud modem? (1K=1024)

minutes = calculate_baud(1024,1024,8,2,56,1024)


%entropy
a = [200,200,200,34;200,5,200,34;200,200,200,99;34,34,99,99]
entropy_of_a=entropy(a)
