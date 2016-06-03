%sobel

I = imread('camera.jpg');

EdgeVertical = edge(I,'sobel','vertical');
EdgeHorizontal = edge(I,'sobel','horizontal');

subplot(2,5,1),imshow(I),title('original');
subplot(2,5,2),imshow(EdgeVertical),title('Vertical');
subplot(2,5,3),imshow(EdgeHorizontal),title('Horizontal');

%with a filter kernel generated

vertical = [-1,0,1;-2,0,2;-1,0,1]; 
horizontal = [-1,-2,-1;0,0,0;1,2,1]; 

% alternative to create kernel
% generate horizontal edge emphasis kernel
hhorizontal = fspecial('sobel');
% invert kernel to detect vertical edges
hvertical = hhorizontal';

J = imfilter(I,vertical);
J2 = imfilter(I,horizontal);
J3 = imfilter(I,hvertical);
J4 = imfilter(I,hhorizontal);
robertt = fspecial('robert');
J5 = imfilter(I,robert)
subplot(2,5,4),imshow(J),title('Vertical - J');
subplot(2,5,5),imshow(J2),title('Horizontal - J2 ');
subplot(2,5,6),imshow(J3),title('Vertical - J3 ');
subplot(2,5,7),imshow(J4),title('Horizontal - J4 ');

