%Create a sample matrix.
A = magic(5)

%Create a filter.

h = [-1 0 1]

%Filter using correlation, the default.
correlation = imfilter(A,h)

%Filter using convolution, using the parameter.

convolution = imfilter(A,h,'conv')


