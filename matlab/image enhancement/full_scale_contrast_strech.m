%full scale contrast strecht


A = [4,8,6,6;6,4,11,8;8,8,9,10;8,11,10,7]
% dikey  yatay
[m,n] = size(A)
results = zeros(size(A))
minA = min(min(A))
maxA = max(max(A))

lengthA = length(A)*length(A)
B = lengthA - 1

x=1;
y=1;


while (y<=m)
  while(x<=n)
    results(y,x) = round((B/(maxA-minA)) * (A(y,x)-minA));
    x++;
  end
  x=1;
  y++;
end

results