function theta = gradientDescent(X, y, theta, alpha, iterations)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
m = length(y);
for iter = 1: iterations
h = X*theta;
a = h-y;
gradient = (1/m)*(X'*a);

theta = theta - alpha*gradient;
if mod(iter,100) == 0
    J = computeCost(X,y,theta);
    fprintf('cost after iteration%d: %f\n',iter, J);
end
end
end