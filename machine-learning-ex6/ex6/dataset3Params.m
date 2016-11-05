function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

testValues = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

errorvalues = [zeros(8), zeros(8)];

for iC = 1:8
  for iSigma = 1:8
    model = svmTrain(X, y, testValues(iC), @(x1, x2) gaussianKernel(x1, x2, testValues(iSigma))); 
    predictions = svmPredict(model, Xval);
    errorsvalues(iC,iSigma)=mean(double(predictions ~= yval));
  end;
end;

%errorsvalues

[val, ival] = min(errorsvalues(:));



sigma = testValues(ceil(ival/8));
C = testValues(mod(ival,8));







% =========================================================================

end
