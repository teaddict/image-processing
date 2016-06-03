
sdirectory = 'flowers_ms';
pictures = dir([sdirectory '/*.png']);
X1 = zeros(512,512);
X2 = zeros(512,512);
sumOfEdge = zeros(512,512);

for k = 1:length(pictures)  
filename = [sdirectory '/' pictures(k).name];
I = imread(filename);
Igauss = imsmooth(I, 'Gaussian');
[Gx, Gy] = imgradientxy(Igauss);
[Gmag, Gdir] = imgradient(Gx, Gy);
thresh = graythresh(I);
if k=1
temp = im2bw(Gmag,thresh);
temp = mat2gray(temp);
sumOfEdge = edge(temp,'canny');
else
temp = im2bw(Gmag,thresh);
temp = mat2gray(temp);
temp = edge(temp,'canny');
sumOfEdge = myfus(temp, sumOfEdge);
end
end
figure, imshow(I, []),title('image');
figure, imshow(sumOfEdge,[]), title('edge fusion');
