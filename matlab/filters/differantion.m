% smoothing filters - spatiel differantion

A = [5,5,4,3,2,1,0,0,0,6,0,0];

firstDerA = diff(A)
% diff(A,n) -> nth derivative 
secondDerA = diff(A,2)