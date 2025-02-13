function [] = lecture6()

%% Lecture 6 - Visualization and Statistics in Matlab

%% Section 1 - Basic Plotting in the X-Y Plane

disp('1. You have two data vectors x and y. ')
x = [0.27, -0.30, 1.15, 3.97, -1.43]
y = [0.80, -0.89, 3.46, 11.92, -4.30]

disp('1a. Find the angle between x and y.')
disp('1b. Plot y vs. x.')


disp('2. Open the year and population values from the census data')
disp('Make a scatter plot of the data.')
M = xlsread("census.xlsx")

disp('3. Plot the function f(x) = x^2 from x in [-1,1]')


disp('4. Plot the function f(x) = sin(x) from x in [-2pi, 2pi]')

%% Section 2 - Plotting Points and Surfaces in 3D 

disp('5. Plot the parametric curve t -> (t,t^2,t^3) from t in [-1,1] as a scatter plot')


disp('6. Plot the parametric curve t -> (t,t^2,t^3) from t in [-1,1] as a curve plot. (Hint: use fplot3)')


disp('7. Plot the surface z = sin(x) + cos(y) where x is [-2pi,2pi] and y is [0,2pi]')
disp('7a. Plot using surf.')
disp('7b. Approximate using scatter3.')


disp('8. Plot the surface ( (a + b * cos(theta)) * cos(phi), (a + b * cos(theta)) * sin(phi), b * sin(theta) )')
disp('where theta is in [0,2pi] and phi is [-pi,pi]')
a = 4
b = 2

disp('8a. Plot using surf.')
disp('8b. Approximate using scatter3.')


%% Section 3 - Random Variables and Functions on Random Variables 

disp('9. Define a random uniform vector of size 1x100 from -1 to 1')
disp('9a. Calculate the mean')
disp('9b. Calculate the variance')
disp('9c. Plot a histogram of the uniform vector')


disp('10. Define a random normal vector of size 1x100 with mean zero and variance 1')
disp('10a. Calculate the mean')
disp('10b. Calculate the variance')
disp('10c. Plot a histogram of the normal vector')


disp('11. Plotting Random Vectors') 
disp('11a. Generate a 100-long vector x (NOT random) whose starting point is 0 and last point is 10. ')
disp('11b. Add Gaussian noise whose mean is μ = 0 and standard deviation σ = 0.3 to x and call it y.')
disp('11c. Calculate the angle between x and y.')
disp('11d. Plot y against x. (d) Generate two 100-long vectors, w and z, of Gaussian noise with mean μ = 0 and standard deviation σ = 0.3.')
disp('11e. Calculate the angle between w and z. ')
disp('11f. Plot w against z.')


disp('12. Define a function that calculates the Pearson Correlation between two vectors.') 
disp('12a. Find the Pearson correlation between the year and population from the census data.')
M = xlsread("census.xlsx")


%% Section 4 - Column Space and Row Space 

disp('13. Choose a 1000 random points x, in the square x in [-1,1] x [-1,1]')
disp('13a. Plot Ax where A is given below')
A = [4, 8; 9, 16]
disp('13b. Plot Row Space of A on the same plot (make sure its a different color)')


disp('14. Choose 1000 random vectors, x, in the unit cube x in [0, 1] × [−1, 0] × [0, 1]')
disp('14a. Plot Ax where A is given below')
A = [1, 2, 0; 0, 0, 0; 0, 3, 1]
disp('14b. Plot Row Space of A on the same plot (make sure its a different color)')


disp('15. Choose 1000 random points within the cube x in [−3, 3]×[−3, 3]× [−3, 3]')
disp('15a. Compute Ax, and plot both x and Ax')
A = [1, 4, 7; 2, 5, 8; 3, 6, 9]
disp('15b. Plot Row Space of A on the same plot (make sure its a different color)')


end