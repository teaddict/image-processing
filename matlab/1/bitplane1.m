% Program to demonstrate the concept of "Bit Level Slicing" of a given gray
% level image
clc;
clear all;
close all;
% read an image
im = imread('face.jpg');
[rows, columns, numberOfColorBands] = size(im);
if numberOfColorBands > 1
	% It's not really gray scale like we expected - it's color.
	% Convert it to gray scale.
	grayImage = rgb2gray(im); % Take weighted average of channels.
end
bit1 = bitget(im, 1);   % lsb for example
bit2 = bitget(im, 2);
subplot(2, 2, 1), imshow(bit1, []), title('First Bit');
subplot(2, 2, 2), imshow(bit2, []), title('Second Bit');
subplot(2, 2, 3), imshow(greyImage, []), title('grey');
