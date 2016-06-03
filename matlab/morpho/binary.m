%örnek işlem

A = ones(5,5);
A(1,:)=0;
A(5,:)=0;
A(:,1)=0;
A(:,5)=0;

A
B = [0,1,0;1,1,1;0,1,0];

C = imerode(A,B)
D = imdilate(A,B)
