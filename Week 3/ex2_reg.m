
clear ; close all; clc



data = load('ex2data2.txt');
X = data(:, [1, 2]); y = data(:, 3);

plotData(X, y);

hold on;

xlabel('Microchip Test 1')
ylabel('Microchip Test 2')

legend('y = 1', 'y = 0')
hold off;


X = mapFeature(X(:,1), X(:,2));

initial_theta = zeros(size(X, 2), 1);

lambda = 1;

[cost, grad] = costFunctionReg(initial_theta, X, y, lambda);





initial_theta = zeros(size(X, 2), 1);

lambda = 1;

options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);

plotDecisionBoundary(theta, X, y);
hold on;
title(sprintf('lambda = %g', lambda))

xlabel('Microchip Test 1')
ylabel('Microchip Test 2')

legend('y = 1', 'y = 0', 'Decision boundary')
hold off;

