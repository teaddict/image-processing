%least squares fit

%xdata = [-2,-1.64,-1.33,-0.7,0,0.45,1.2,1.64,2.32,2.9];
%ydata = [0.699369,0.700462,0.695354,1.03905,1.97389,2.41143,1.91091,0.919576,-0.730975,-1.42001];

xdata = [1,3,5,7,10,12,13,16,18,20];
ydata = [4,5,6,5,8,7,6,9,12,11];

%Function to calculate the sum of residuals for a given p1 and p2
fun = @(p) sum((ydata - (p(1)*cos(p(2)*xdata)+p(2)*sin(p(1)*xdata))).^2);
plot(xdata,ydata)
%starting guess
pguess = [1,0.2];

%optimise
[p,fminres] = fminsearch(fun,pguess)

% bi sonraki işlemlde bu sefer guess kısmını , program çalıştıktan sonra gelen
% p = 1.88186   0.70020
%sonucuna göre yaparız yani pguess=[1.88186,0.70020]; olur
