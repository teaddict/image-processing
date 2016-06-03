%*******************************
% User defined fusion method.  *
%*******************************
function C = myfus(A,B)

%triu : üst üçgen matris 
D = logical(triu(ones(size(A))));  
%threshold
t = 0.3;
C = A;
C(D)  = t*A(D)+(1-t)*B(D);
C(~D) = t*B(~D)+(1-t)*A(~D);