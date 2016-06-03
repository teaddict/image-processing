A=[5,8,12,9;8,12,5,4;9,12,10,9;11,9,7,12]
B=[8,12,9,13;12,5,4,11;12,10,9,8;2,3,4,5]
err = immse(A, B);
fprintf('\n The mean-squared error is %0.4f\n', err);