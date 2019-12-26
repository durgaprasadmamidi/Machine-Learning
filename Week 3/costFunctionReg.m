function [J, grad] = costFunctionReg(theta, X, y, lambda)

m = length(y); 

J = 0;
grad = zeros(size(theta));
grad1 = zeros(size(theta));


 H=sigmoid(X*theta);
  J= -sum(y.*log(H)+(1-y).*log(1-H))/m + lambda*(sum(theta.^2)-theta(1)^2)/(2*m);

  
for i = 1 : m,
	grad1 = grad1 + (H(i) - y(i)) * X(i,:)';
end

grad = 1/m*grad1 + lambda*(theta)/m;
grad(1) = 1/m*grad1(1);

end
