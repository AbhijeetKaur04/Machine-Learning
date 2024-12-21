function(MAE,MSE, RMSE, RMSLE, R_squared, adj_R_squared) = Ematrics(X, y, theta)
m = length(y);
h = X*theta;
a = h-y;

MAE = (1/m)*sum(abs(a));

MSE = (1/m)*sum(a.^2);

RMSE = sqrt(MSE);

RMSLE = sqrt((1/m)*((log(y+1)-log(h+1)).^2));

y_avg = mean(y);

MSE_base = (1/m)*sum((y-y_avg).^2);

ratio = MSE/MSE_base;

R_squared = 1-ratio;

n=2;

adj_R_squared = 1-(1-R_squared)*((m-1)/(m-(n+1)));

end