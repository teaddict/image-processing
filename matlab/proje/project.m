sdirectory = 'flowers_ms';
pictures = dir([sdirectory '/*.png']);
X2 = zeros(512,512);
sumOfMag = zeros(512,512);
for k = 1:length(pictures)
%for k = 1:1
filename = [sdirectory '/' pictures(k).name];
I = imread(filename);
Igauss = imsmooth(I, 'Gaussian');
[Gx, Gy] = imgradientxy(Igauss);
[Gmag, Gdir] = imgradient(Gx, Gy);
if k=1
sumOfMag = Gmag;
else
X2 = Gmag;
sumOfMag = myfus(sumOfMag,X2);
end
end
figure, imshow(I, []), title('image');
figure, imshow(sumOfMag, []), title('magnitude fusion');
