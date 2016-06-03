% canny
% The Canny method differs from the other edge-detection methods in that it uses
% two different thresholds (to detect strong and weak edges),
% and includes the weak edges in the output only if they are connected to strong edges.
I = imread('coins.png');
I = rgb2gray(I);
cann = edge(I,'canny');
sobe = edge(I,'sobel');

subplot(1,2,1),imshow(cann),title('canny');
subplot(1,2,2),imshow(sobe),title('sobel');