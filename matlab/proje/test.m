A = rand(3)
B = rand(3)

D = logical(triu(ones(size(A)))) 
t = 0.3;

C = A;
C(D)