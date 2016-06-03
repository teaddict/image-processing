%Here is an example of how to use the straight-line Hough-transform: 

 I = zeros(100, 150); 
 I(30,:) = 1; I(:, 65) = 1; I(35:45, 35:50) = 1; 
 for i = 1:90, I(i,i) = 1;endfor 
 I = imnoise(I, 'salt & pepper'); 
 imshow(I); 
 J = houghtf(I); J = J / max(J(:)); 
 imshow(J*1024, hot(255), 'truesize'); 