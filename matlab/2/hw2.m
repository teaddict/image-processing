
function homework ( )
  fprintf ( 1, '\n' );
  fprintf ( 1, 'HW2\n' );
  %görüntüyü oku
  A = imread('cameraman.jpg');
  %haar transformu yap
  v = haar_2d ( A );
  %tersini al 
  inverse_v = haar_2d_inverse ( v );
  %ekrana bastır
  subplot(1,2,1),imshow(v,[])
  subplot(1,2,2),imshow(inverse_v,[])

  %err = immse(X,Y) calculates the mean-squared error (MSE) between the
  %arrays X and Y. X and Y can be arrays of any dimension, but must be of the same size and class.
  %hatayı göster
  err = immse(A, inverse_v);
  fprintf('\n The mean-squared error is %0.4f\n', err);
  return
end