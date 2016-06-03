
RGB = imread('coins.png');
 % resim sayısal olarak yüklendi
I = rgb2gray(RGB); 
% resim tek renk olan gri tona indirgendi.
esik_degeri = graythresh(I); 
% resmin eşik değeri belirlendi.
bw = im2bw(I,esik_degeri); 
% resmin eşik değerine göre bir ve sıfırdan oluşan siyah beyaz formata çevrildi.
bw = bwareaopen(bw, 50);
% nesnelerin elemanları arasındaki boşlukları birleştirecek
birlestirici = strel('square',3);
bw = imdilate(bw,birlestirici);
imshow(bw);
Rmin = 8;
Rmax = 30;
% belirtilen yarı çaplarda aydınlık yuvarlaklar bulunmaktadır.
[aydinlik_merkezi, aydinlik_yaricapi] = imfindcircles(bw,[Rmin Rmax],'ObjectPolarity','bright');
% belirtilen yarı çaplarda karanlık yuvarlaklar bulunmaktadır.
[karanlik_merkezi, karanlik_yaricapi] = imfindcircles(bw,[Rmin Rmax],'ObjectPolarity','dark')
% bulunan aydınlık ve karanlık çember çiziliyor.
viscircles(aydinlik_merkezi, aydinlik_yaricapi,'EdgeColor','b');
viscircles(karanlik_merkezi, karanlik_yaricapi,'LineStyle','--');
