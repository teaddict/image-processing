c = imread('Koala.jpg');
a = rgb2gray(c);
cd = double(a);
c0 = mod(cd,2);
c1 = mod(floor(cd/2),2);
c2 = mod(floor(cd/4),2);
c3 = mod(floor(cd/8),2);
c4 = mod(floor(cd/16),2);
c5 = mod(floor(cd/32),2);
c6 = mod(floor(cd/64),2);
c7 = mod(floor(cd/128),2);

bir = 1*c0 + 2*c1 + 4*c2 +8*c3 + 16*c4 + 32*c5 + 64*c6 +128*c7;


c1 = ~c1;
c3 = ~c3;
c5 = ~c5;
c7 = ~c7;

iki = 1*c0 + 2*c1 + 4*c2 +8*c3 + 16*c4 + 32*c5 + 64*c6 +128*c7;

c1 = ~c1;
c3 = ~c3;
c5 = ~c5;
c7 = ~c7;

uc = 1*c0 + 2*c1 + 4*c2 +8*c3 + 16*c4 + 32*c5 + 64*c6 +128*c7;

subplot(1,3,1),imshow(bir,[])
subplot(1,3,2),imshow(iki,[])
subplot(1,3,3),imshow(uc,[])