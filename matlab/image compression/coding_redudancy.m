%coding redundancy
%rk    p(rk)   code1   l1(rk)  code2   l2(rk)
%r0=0  0.19    000     3       11       2
%r1=1/7 0.25   001     3       01       2
%r2=2/7 0.21   010     3       10       2
%r3=3/7 0.16   011     3       001      3
%r4=4/7 0.08   100     3       0001     4
%r5=5/7 0.06   101     3       00001    5
%r6=6/7 0.03   110     3       000001   6
%r7=1 0.02     111     3       000000   6

%average number of bits per pixel
%La = 2(0.19) + 2(0.25) + 2(0.21) + 3(0.16) + 4(0.08) + 5(0.06) + 6(0.03) + 6(0.02) = 2.7 bits
l2 = [2.0,2.0,2.0,3.0,4.0,5.0,6.0,6.0]
p = [0.19,0.25,0.21,0.16,0.08,0.06,0.03,0.02]

%C = l2 .* p
sum = 0.0;
for i = 1:8
  sum = l2(i)*p(i) + sum
end
%average number of bits per pixel
sum

%Cr = 3 / 2.7 = 1.1 -> 3 , 8 bit old için 2^3 den geliyor
Cr = 3 / sum 

%relative data redudancy = rd = 1 - (1/cr)
Rd = 1 - (1/Cr)