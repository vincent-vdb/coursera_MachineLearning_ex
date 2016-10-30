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

%disp(theta')

%disp(theta)

%tmp = theta'.*X;

%size(theta)
%size(X)

%disp(X)

%disp(y)

%disp(theta)
%tmp = tmp(:,1);



%tmp = (tmp-y);

%disp(tmp)

J = sum((theta(1) + theta(2)*X(:,2) - y).^2)/2/length(X(:,2));

%J = 0.5/m*sum(tmp.^2);



%clear tmp



% =========================================================================

end
