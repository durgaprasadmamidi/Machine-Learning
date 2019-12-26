function [J, grad] = costFunction(theta, X, y)

m = length(y); 

J = 0;
grad = zeros(size(theta));

  H=sigmoid(X*theta);
  J= -sum(y.*log(H)+(1-y).*log(1-H))/m;
  
for i = 1 : m,
	grad = grad + (H(i) - y(i)) * X(i,:)';
end

grad = 1/m*grad;

end
