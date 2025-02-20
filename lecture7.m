function [] = lecture7()

%% Lecture 7 - Curve Fitting and Least Squares

%% Two fundamental problems 
%% Two entirely different approaches
%% Both solved using RREF


%% Section 1 - Curve (Over) Fitting 

%% Find a polynomial of the same degree as the size of the sample! 

disp('1. Determine the polynomial p(x) = a_0 + a_1 x whose graph passes through the following points.')
X = [2.9,5.3]
Y = [-2.3,1.4]


disp('2. Determine the polynomial p(x) = a_0 + a_1 x + a_2 x^2 whose graph passes through the following points.')
X = [1,2,3]
Y = [4,0,12]


disp('3. Find a polynomial that fits the following set of points.')
X = [-2, -1, 0, 1, 2]
Y = [3,5,1,4,10]


%% Section 2 - Least Squares 

%% Find linear functions of least distance from the points themselves.  

disp('4. Given the X,Y data below.')
X = 0:0.5:20
Y = 3 * X - 1 + normrnd(0,5,1,length(X)) 
disp('a.) Find a least squares approximation of the X,Y data below.')
disp('b.) Measure the overall regression error.')
disp('c.) Plot the points as a scatter plot and the regression as a curve on top.')


disp('5. Find a least squares approximation predicting salary based off year. Plot the result over the scatter of points. ')
M = xlsread("Salary_dataset.xlsx")


disp('6. Find a least squares approximation predicting student performance based off . Plot the result over the scatter of points. ')
disp('Plot the result versus the predicted value.')
M = xlsread("Student_Performance.xlsx")


disp('7. Find a least squares approximation predicting quality based off of all the other characteristics. ')
disp('Plot the result versus the predicted value.')
M = xlsread("winequality-red.xlsx")


%% Section 3 - Bias / Variance Tradeoff in Mathematical Modeling 

%% Requires more mathematical finesse than just linear algebra (need to 
%% understand some convex/proximal optimization theory too). But we can 
%% still learn about it. 

disp('8. Open the census data from last week.')
M = xlsread("census.xlsx")
disp('a.) Plot the data. ')
disp('b.) What shape does it have. Does it look like a polynomial? Fit that polynomial. ')
disp('c.) Draw that fit on top of the plot.')

disp('9. Open the surface data franke')
M = xlsread("franke.xlsx")
disp('a.) Plot the data. Remember it is in 3 space. ')
disp('b.) What shape does it have. Does it look like a polynomial? Fit that polynomial. ')
disp('c.) Draw that fit on top of the plot.')


end