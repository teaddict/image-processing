% peaksnr = psnr(A,ref) calculates the peak signal-to-noise ratio for the image A,
% with the image ref as the reference. A and ref must be of the same size and class.

%Read image and create a copy with added noise. The original image is the reference image.
%ref = imread('camera.jpg');
%A = imnoise(ref,'salt & pepper', 0.02);
%
%%Calculate the PSNR.
%[peaksnr, snr] = psnr(A, ref);
%
%fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
%fprintf('\n The SNR value is %0.4f \n', snr);

InputImage=imread('camera.jpg');
ReconstructedImage=imnoise(InputImage,'salt & pepper', 0.02);
n=size(InputImage);
 M=n(1);
 N=n(2);
 MSE = sum(sum((InputImage-ReconstructedImage).^2))/(M*N);
PSNR = 10*log10(256*256/MSE);
 fprintf('\nMSE: %7.2f ', MSE);
 fprintf('\nPSNR: %9.7f dB', PSNR);
