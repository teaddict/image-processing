%fourier transform

X = [1,1,0,0;1,1,0,0;1,1,0,0;1,1,0,0];

Y = fft2(X)

%inverse fourier transform

A = [69,-10+7i,-13,-10-7i;
     -10+11i,7-4i,-6+5i,1;
     7,2+5i,-15,2-5i;
     -10-11i,1,-6-5i,7+4i];
     
B = ifft2(A)

