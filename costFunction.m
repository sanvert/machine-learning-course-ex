function J = costFunction(X, y, theta)
%COSTFUNCTION Summary of this function goes here
%   Detailed explanation goes here
    m = size(X, 1);
    predictions = X * theta;
    sqrErrors = (predictions - y).^2;
    J = sum(sqrErrors) / (2 * m);
end

