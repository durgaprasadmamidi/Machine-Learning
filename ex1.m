data = load('ex1data1.txt');
X=data(:,1);
y=data(:,2);
m=length(y);

plotData(X,y);

X=[ones(m,1),data(:,1)];
theta=zeros(2,1);
iterations=1500;
alpha=0.01;

J=computeCost(X,y,theta);

[theta, J_history] = gradientDescent(X, y, theta, alpha, iterations)


hold on;
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')

