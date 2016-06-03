clear all;clc;
I = imread('coins.png');
I =im2bw(I);
[y,x]=find(I);
[sy,sx]=size(I);
%%imshow(I);


totalpix = length(x);


HM = zeros(sy,sx);
R = 34;
R2 = R^2;


b = 1:sy;

for cnt = 1:totalpix
a = (round(x(cnt) - sqrt(R2 - (y(cnt) - [1:sy]).^2)));
for cnt2 =1:sy
if isreal(a(cnt2)) && a(cnt2)>0
HM(cnt2,a(cnt2)) = HM(cnt2,a(cnt2)) + 1;
end
end
end

%%imshow(HM,[]);



[maxval, maxind] = max(max(HM));
[B,A] = find(HM==maxval);
imshow(I); hold on;
plot(mean(A),mean(B),'xr');
