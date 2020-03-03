function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
%suma = 0;
%for i=1:m
%  j = 0;
%  j = j + X(i,1)*theta(1,1);
%  j = j + X(i,2)*theta(2,1);
% 
%  resta = (j - y(i))^2;
%  suma = suma+resta;
%end

%J = suma /(2*m);
producto = X * theta;
resta = sum((producto-y).^2);
J= resta/(2*m);

% =========================================================================

end
