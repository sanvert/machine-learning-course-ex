function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
theta_size = size(theta);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

for i = 1 : m

  s = sigmoid(-1 * (X(i, :) * theta));
  J = J + (-1 * y(i) * log(s)) - ((1 - y(i)) * log(1 - s));
  
end;

J = J / m;


for j = 1 : theta_size

  for i = 1 : m
    s = sigmoid(-1 * (X(i, :) * theta));
    grad(j) = grad(j) + ((-1 * y(i) * log(s)) - ((1 - y(i)) * log(1 - s))) * X(i, j);
    %grad(j) = grad(j) + (s - y(i)) * X(i, j);
  end;
  grad(j) = grad(j) / m;
  
end;


% =============================================================

end