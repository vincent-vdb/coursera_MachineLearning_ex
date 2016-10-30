function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
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


tmp1 = theta(1) - alpha/length(X(:,2)) * sum((theta(1) + theta(2)*X(:,2) - y));

tmp2 = theta(2) - alpha/length(X(:,2)) * sum((theta(1) + theta(2)*X(:,2) - y).*X(:,2));

theta(1) = tmp1;
theta(2) = tmp2;

%tmp = theta'.*X;

%disp(X)

%disp(y)

%disp(theta)

%tmp = tmp(:,1);

%tmp = (tmp-y);
%tmp = tmp.^2;

%disp(theta)

%disp(sum(tmp .* X))

%disp(tmp)
%disp(tmp)

%disp(X)

%tmp2 = sum(tmp .* X);

 

%size(tmp)
%disp(tmp)

%disp(alpha/m*tmp')
%theta(1) = theta(1) + alpha/m*sum(tmp);

%disp(sum(X(:,2)).*tmp)
%theta(2) = theta(2) + alpha/m*sum(X(:,2).*tmp);
%theta = theta - alpha/m*tmp';

%disp(theta)
%disp(size(J_history))

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

%disp(J_history(iter))

end

end
