
function hw ( )

%*****************************************************************************80
%
%% HAAR_TEST02 tests HAAR_2D and HAAR_2D_INVERSE.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    05 March 2014
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'HAAR_TEST02\n' );
  fprintf ( 1, '  HAAR_2D computes the Haar transform of an array.\n' );
  fprintf ( 1, '  HAAR_2D_INVERSE inverts the transform.\n' );
%
%  Demonstrate successful inversion.
%
%   a=imread('cameraman.jpg');
%     [v,w]=haaar(a);
%     imshow([v,w],[])
  A = imread('cameraman.jpg');
  v = haar_2d ( A );
  w = haar_2d_inverse ( v );
  subplot(1,2,1),imshow(v,[])
  subplot(1,2,2),imshow(w,[])
  err = immse(A, w);
  fprintf('\n The mean-squared error is %0.4f\n', err);
  return
end