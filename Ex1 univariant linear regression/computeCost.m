function J = computeCost(X, y, theta)

h = X * theta;
a= h-y;
m= length(y);
J= (1/(2*m))*sum(a.^2);
disp(J)