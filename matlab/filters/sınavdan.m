I = imread('parrot.jpg');

ID = im2double(I);

% high pass filter, beyazlaşır
f1 = [1,1,1;1,1,1;1,1,1];
% sobel filtresi , yatay ve düşey yönde keskinlikleri yakalamaya yarıyordu. 
f2 = [-1,0,1;-1,0,1;-1,0,1];
% laplace filtresi,her yöndeki keskinleştirme yapmaya yarar.
f3 = [1,1,1;1,-8,1;1,1,1];

I1 = filter2(f1,ID);
I2 = filter2(f2,ID);
I3 = filter2(f3,ID);

%Y = filter2(h,X) filters the data in X with the two-dimensional FIR filter
%in the matrix h.

subplot(2,4,1),imshow(I),title('original');
subplot(2,4,2),imshow(I1),title('filter1 - high pass');
subplot(2,4,3),imshow(I2),title('filter2 - sobel');
subplot(2,4,4),imshow(I3),title('filter3 -  laplace');

h = fspecial('laplace')
