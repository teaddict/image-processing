
% 1- read ref,im1 and im2
im1 = imread('im1.jpg');
im2 = imread('im2.jpg');
ref = imread('ref.jpg');

% 2- ref ve im1(i,j,ch) için LBSP bul
reflbsp = lbsp(ref);
im1lbsp = lbsp(im1);

% 3- im2(i,j,ch) için LBSP bul, im1deki aynı merkezi kullanacağız yine
im2lbsp = lbsp(im2);

% 4- hamming distance hesapla
% out(i,j) -> hamming distance vericek
% out(i,j,ch) -> kanalı da verir

distance1 = xor(reflbsp,im1lbsp);

distance2 = xor(reflbsp,im2lbsp);

subplot(2,2,1); imshow(distance1);title('distance1');

subplot(2,2,2); imshow(distance2);title('distance2');
