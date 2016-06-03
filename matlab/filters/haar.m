% haar transform 1d
% her işlem sonrası çıkan sonucu  A olarak gir
% A 8 elemanlıysa 4 kere bu işlem yapılır
A = [3,5,4,8,13,7,5,3]

B = zeros(size(A));

n = length(A);

i = 1;
j = 1;
k = n/2 + 1;
while(i<=n)
  B(j) = (A(i)+A(i+1)) / 2;
  B(k) = A(i) - A(i+1);
  k++;
  j++;
  i = i+2;
end

B