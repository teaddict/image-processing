% Least Squares Estimate
x = [1,3,5,7,10,12,13,16,18,20];
y = [4,5,6,5,8,7,6,9,12,11];

% Formulating in matrix for solving for least squares estimate
Y = y.';
X = [x.' ones(1,length(x)).'];
alpha = inv(X'*X)*X'*Y % solving for m and c

% constructing the straight line using the estimated slope and constant
yEst = alpha(1)*x + alpha(2);

close all
figure
plot(x,y,'r.')
hold on
plot(x,yEst,'b')
legend('observations', 'estimated straight line')
grid on
ylabel('observations')
xlabel('x axis')
title('least squares straight line fit')