% You will notice that the resulting values are not in the range of [0, 255]. 
% To get better results, you can normalize the filter (in this case, divide by 45).

cat = imread('camera.jpg');

h=[1 2 3
   4 5 6
   7 8 9];
h=h/45;
result_corr=imfilter(cat,h);   % correlation is the default, 
                               % you can also send 'corr' as an argument
result_conv=imfilter(cat,h,'conv');
 

subplot(1,2,1),imshow(result_corr),title('correlation');
subplot(1,2,2),imshow(result_conv),title('convolution');