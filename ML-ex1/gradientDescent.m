function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
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
    %       of the cost function (computeCost) and gradient here.
    %
    % ============================================================
    %sumat0 = 0;
    %for i=1:m
    %  j = 0;
    %  j = j + X(i,1)*theta(1,1);
    %  j = j + X(i,2)*theta(2,1);
    %  resta = (j - y(i)) * X(i,1);
    %  sumat0 = sumat0+resta;
    %end
    %sumat1 = 0;
    %for i=1:m
    %  j = 0;
    %  j = j + X(i,1)*theta(1,1);
    %  j = j + X(i,2)*theta(2,1);
    %  resta = (j - y(i)) * X(i,2);
    %  sumat1 = sumat1+resta;
    %end
    %t0 = theta(1,1) - (alpha * sumat0)/m;
    %t1 = theta(2,1) - (alpha * sumat1)/m;
    %theta = [t0;t1];
    % Save the cost J in every iteration    

    producto = X * theta;
    dis = producto -y;
    st0 = sum((dis .* X(:,1)));
    st1 = sum((dis .* X(:,2)));
    t0 = theta(1,1) - (alpha * st0)/m;
    t1 = theta(2,1) - (alpha * st1)/m;
    theta = [t0;t1];
    J_history(iter) = computeCost(X, y, theta);

end
end
