
clear ; close all; clc



data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);



plotData(X, y);


hold on;

xlabel('Exam 1 score')
ylabel('Exam 2 score')


legend('Admitted', 'Not admitted')
hold off;

[m, n] = size(X);

X = [ones(m, 1) X];

initial_theta = zeros(n + 1, 1);

[cost, grad] = costFunction(initial_theta, X, y);




options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, cost] = ...
	fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);


plotDecisionBoundary(theta, X, y);

hold on;

xlabel('Exam 1 score')
ylabel('Exam 2 score')

legend('Admitted', 'Not admitted')
hold off;





