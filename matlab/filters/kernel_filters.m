I = imread('parrot.jpg');

ID = im2double(I);

f1 = [0,0,0;0,1,0;0,0,0];
f2 = [1,1,1;1,1,1;1,1,1];
f3 = [0,0,0;1,0,0;0,0,0];
f4 = [1,1,1;1,0,1;1,1,1];

I1 = filter2(f1,ID);
I2 = filter2(f2*(1/9),ID);
I3 = filter2(f3,ID);
I4 = filter2(f4,ID);

%Y = filter2(h,X) filters the data in X with the two-dimensional FIR filter
%in the matrix h.

subplot(2,4,1),imshow(I),title('original');
subplot(2,4,2),imshow(I1),title('unchanged');
subplot(2,4,3),imshow(I2),title('blur');
subplot(2,4,4),imshow(I3),title('shift left');
subplot(2,4,5),imshow(I4),title('test');