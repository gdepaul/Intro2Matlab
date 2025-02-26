function [] = lecture7()

%% Lecture 7 - Curve Fitting and Least Squares

%% Two fundamental problems 
%% Two entirely different approaches
%% Both solved using RREF


%% Section 1 - Curve (Over) Fitting 

%% Find a polynomial of the same degree as the size of the sample! 
% 
% disp('1. Determine the polynomial p(x) = a_0 + a_1 x whose graph passes through the following points.')
% X = [2.9,5.3]
% Y = [-2.3,1.4]
% 
% A = [transpose(X), ones(2,1)]
% b = transpose(Y)
% 
% coefficients = inv(A) * b
% 
% scatter(X,Y,'filled')
% hold on
% fplot(@(x) coefficients(1) * x + coefficients(2),X)
% 
% 
% disp('2. Determine the polynomial p(x) = a_0 + a_1 x + a_2 x^2 whose graph passes through the following points.')
% X = [1,2,3]
% Y = [4,0,12]
% 
% XSquared = arrayfun(@(x) x^2, X)
% Ones = ones(3,1)
% 
% A = [Ones,transpose(X),transpose(XSquared)]
% b = transpose(Y) 
% 
% coefficients = inv(A) * b
% 
% figure()
% scatter(X,Y,'filled')
% hold on
% fplot(@(x) coefficients(1) + coefficients(2) * x + coefficients(3) * x^2, [min(X), max(X)])
% 
% 
% 
% disp('3. Find a polynomial that fits the following set of points.')
% X = [-2, -1, 0, 1, 2]
% Y = [3,5,1,4,10]
% 
% XFourths = arrayfun(@(x) x^4, X)
% XCubes = arrayfun(@(x) x^3, X)
% XSquared = arrayfun(@(x) x^2, X)
% Ones = ones(5,1)
% 
% A = [Ones,transpose(X),transpose(XSquared),transpose(XCubes),transpose(XFourths)]
% b = transpose(Y) 
% 
% coefficients = inv(A) * b
% 
% figure()
% scatter(X,Y,'filled')
% hold on
% fplot(@(x) coefficients(1) + coefficients(2) * x + coefficients(3) * x^2 + coefficients(4) * x^3 + coefficients(5) * x^4, [min(X), max(X)])



%% Section 2 - Least Squares 

%% Find linear functions of least distance from the points themselves.  

% disp('4. Given the X,Y data below.')
% X = 0:0.5:20
% Y = 3 * X - 1 + normrnd(0,5,1,length(X)) 
% disp('a.) Find a least squares approximation of the X,Y data below.')
% A = [transpose(X), ones(length(X),1)]
% b = transpose(Y)
% 
% % ATA * coefficients = ATb
% % coefficients = inv(ATA) * ATb
% coefficients = inv(transpose(A) * A) * transpose(A) * b
% 
% disp('b.) Measure the overall regression error.')
% y_pred = arrayfun(@(x) coefficients(1) * x + coefficients(2),X)
% error = sum(arrayfun(@(x) x^2, Y - y_pred)) / length(y_pred)
% 
% disp('c.) Plot the points as a scatter plot and the regression as a curve on top.')
% scatter(X,Y,'filled')
% hold on
% fplot(@(x) coefficients(1) * x + coefficients(2),[min(X),max(X)])
% 
% disp('5. Find a least squares approximation predicting salary based off year. Plot the result over the scatter of points. ')
% figure()
% M = xlsread("Salary_dataset.xlsx")
% X = M(:,1)
% Y = M(:,2)
% A = [X, ones(length(X),1)]
% b = Y
% 
% % ATA * coefficients = ATb
% % coefficients = inv(ATA) * ATb
% coefficients = inv(transpose(A) * A) * transpose(A) * b
% 
% y_pred = arrayfun(@(x) coefficients(1) * x + coefficients(2),X)
% error = sum(arrayfun(@(x) x^2, Y - y_pred)) / length(y_pred)
% 
% scatter(X,Y,'filled')
% hold on
% fplot(@(x) coefficients(1) * x + coefficients(2),[min(X),max(X)])
% 
% 
% disp('6. Find a least squares approximation predicting student performance based off . Plot the result over the scatter of points. ')
% disp('Plot the result versus the predicted value.')
% figure()
% M = xlsread("Student_Performance.xlsx")
% [m,n] = size(M)
% X = M(:,1:n-1)
% Y = M(:,n)
% A = [X, ones(length(X),1)]
% b = Y
% 
% coefficients = inv(transpose(A) * A) * transpose(A) * b
% 
% f = @(x) dot(coefficients(1:length(coefficients) - 1),x) + coefficients(length(coefficients))
% y_pred = zeros(length(Y),1);
% 
% for k=1:m
%     y_pred(k) = f(X(k,:));
% end
% 
% scatter(y_pred, Y)
% 
% % 
% % disp('7. Find a least squares approximation predicting quality based off of all the other characteristics. ')
% % disp('Plot the result versus the predicted value.')
% figure()
% M = xlsread("winequality-red.xlsx")
% [m,n] = size(M)
% X = M(:,1:n-1)
% Y = M(:,n)
% A = [X, ones(length(X),1)]
% b = Y
% 
% coefficients = inv(transpose(A) * A) * transpose(A) * b
% 
% f = @(x) dot(coefficients(1:length(coefficients) - 1),x) + coefficients(length(coefficients))
% y_pred = zeros(length(Y),1);
% 
% for k=1:m
%     y_pred(k) = f(X(k,:));
% end
% 
% scatter(y_pred, Y)
% hold on
% fplot(@(x) x, [min(y_pred),max(y_pred)])

%% Section 3 - Bias / Variance Tradeoff in Mathematical Modeling 

%% Requires more mathematical finesse than just linear algebra (need to 
%% understand some convex/proximal optimization theory too). But we can 
%% still learn about it. 

disp('8. Open the census data from last week.')
M = xlsread("census.xlsx")
disp('a.) Plot the data. ')
scatter(M(:,1),M(:,2),'filled')
disp('b.) What shape does it have. Does it look like a polynomial? Fit that polynomial. ')
f=fit(M(:,1),M(:,2),'exp1')
disp('c.) Draw that fit on top of the plot.')
hold on
plot(f)

% To learn how to get these coefficients - need to understand (convex and proximal) optimization
% theory

figure()
disp('9. Open the surface data franke')
M = xlsread("franke.xlsx")
disp('a.) Plot the data. Remember it is in 3 space. ')
scatter3(M(:,1),M(:,2),M(:,3),'filled')
disp('b.) What shape does it have. Does it look like a polynomial? Fit that polynomial. ')
disp('c.) Draw that fit on top of the plot.')
f = fit([M(:,1),M(:,2)], M(:,3),'poly23')
hold on
plot(f)

end