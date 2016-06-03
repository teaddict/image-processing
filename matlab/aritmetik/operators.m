

I = imread('parrot.jpg');
% get information of pic
% whos I

%add 
I1 = imadd(I,128);

%subtract
I2 = imsubtract(I,128);

%multiply
I3 = immultiply(I,2);

%divide
I4 = imdivide(I,2);

% tersini alma -> goruntunun negatifi
% double class ise 1-m 
% binary ise ~m
%uint8 class ise imcomplement(m)
I5 = imcomplement(I);

subplot(2,5,1),imshow(I),title('original');
subplot(2,5,2),imshow(I1),title('add');
subplot(2,5,3),imshow(I2),title('subtract');
subplot(2,5,4),imshow(I3),title('multiply');
subplot(2,5,5),imshow(I4),title('divide');
subplot(2,5,6),imshow(I4),title('complement');