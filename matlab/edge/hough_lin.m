
%Read image and convert it to grayscale.
RGB = imread('gantrycrane.png');
img  = rgb2gray(RGB);
%Extract edges.

edge = edge(img,'canny');

hough = houghtf(edge,"line", pi*[0:360]/180);
threshHough = hough>.5*max(hough(:));

[r, theta] = find(threshHough>0);

%deg to rad for the trig functions
theta = theta/180*pi; 
%according to octave doc r range is 2*diagonal 
%-> bring it down to 1*diagonal or all lines are out of the picture
r = r/2;

%coefficients of the line y=ax+b
a = -cos(theta)./sin(theta);
b = r./sin(theta);

x = 1:size(img,2);
y = a * x + b;


figure(1)
imagesc(edge);
colormap gray;
hold on;
for i=1:size(y,1)
axis ij;
plot(y(i,:),x,'r','linewidth',1);
end
hold off;

