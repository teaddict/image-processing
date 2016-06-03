I = imread('parrot.jpg');

ID = im2double(I);

f = ones(3,3)/9;

I1 = filter2(f,ID);

%Y = filter2(h,X) filters the data in X with the two-dimensional FIR filter
%in the matrix h.

subplot(1,2,1),imshow(I),title('original');
subplot(1,2,2),imshow(I1),title('1/9 filter');