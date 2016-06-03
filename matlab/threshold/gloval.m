%Read image into the workspace.

I = imread('coins.png');
%Use adaptthresh to determine threshold to use in binarization operation.

T = adaptthresh(I, 0.4);
%Convert image to binary image, specifying the threshold value.

BW = imbinarize(I,T);
%Display the original image with the binary version, side-by-side.

figure
imshowpair(I, BW, 'montage');