%sınavdan
% plot the histogram of this image A
A = [10,10,9,9;
     9,9,1,4;
     9,8,3,1;
     9,2,3,2];
B = histeq(A);
graythresh(B)

max(B)
min(B)
figure,plot(B);