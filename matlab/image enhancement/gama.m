I=imread('parrot.jpg');

J=imadjust(I,[],[],1);
J2=imadjust(I,[],[],3);
J3=imadjust(I,[],[],0.4);
subplot(1,4,1),imshow(I);
subplot(1,4,2),imshow(J);
subplot(1,4,3),imshow(J2);
subplot(1,4,4),imshow(J3);
% g= imadjust (f, [low_in high_in], [low_out high_out], gamma)
% gamma <1: the mapping is weighted toward brighter output values.
% gamma = 1 (default): the mapping is linear>
% gamma > 1: the mapping is weighted toward darker output values

% Obtaining the negative image using imadjust function.
% g1 = imagjust (f, [0 1], [1 0]);

% Obtaining the negative image using IPT function ''imcomplement''
% g= imcomplement (f);

% Expanding the gray scale region between 0.5 and 0.75 to the full [0.1] range.
% g2 = imadjust (f, [0.5 0.7,5], [0 1]);

% Compression the low end and expanding the high end of the gray scale.
% g3 = imadjust (f, [ ], [ ], 2);