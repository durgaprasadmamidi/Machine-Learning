function J = computeCost(X, y, theta)

m = length(y); 
h=X*theta;
J=sum((h-y).^2)/(2*m);

end
