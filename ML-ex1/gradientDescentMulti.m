function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    
    %producto = X * theta;
    %dis = producto - y;
    %thetar = [];
    %tamX = size(X);
    %n = tamX(:,2);
    %for i = 1:n
    %    sthetai = sum((dis .* X(:,i)));
    %    thetai = theta(i,1) - (alpha * sthetai)/m;
    %    thetar = [thetar ; thetai];
    %end
    %thetar
    %pause;
    % ============================================================
    diferencia = (X*theta) - y;
    sumatoria = sum(diferencia .* X);
    theta = theta - (alpha*sumatoria')/m;
    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
    %theta = thetar;

end

end
