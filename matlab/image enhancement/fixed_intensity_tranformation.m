% fixed intensity transformation

%full scale contrast strecht


A = [1,8,6,6;6,3,11,8;8,8,9,10;9,10,10,7]
% dikey  yatay
[m,n] = size(A)
results = zeros(size(A))

lengthA = length(A)*length(A)
B = lengthA - 1

x=1;
y=1;


while (y<=m)
  while(x<=n)
    results(y,x) = round((1/B) *(A(y,x)*A(y,x)));
    x++;
  end
  x=1;
  y++;
end

results