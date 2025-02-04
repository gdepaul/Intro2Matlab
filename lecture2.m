function [] = lecture2()

%% Lecture 2 - Adding Complexity by way of Vectors. Variables don't have to
%%              be scalar values! They can have dimensionality! 

%% Section 1 - Basic Operations with Vectors

    % disp('1. Everything is a vector in matlab')
    % X = [1 2 3 4]
    % Y = transpose(X)
    % 
    % disp('2. Every vector has an inherent size (or dimension)')
    % size(X)
    % size(Y)
    % 
    % disp('3. You can perform operations between vectors: Addition')
    % X = [1 2 3]
    % Y = [4 5 6]
    % X + Y
    % 
    % disp('4. Scalar Multiplication')
    % X = [3 5 6 9]
    % 3.14 * X
    % 
    % disp('5. We can specify larger vectors in several different ways')
    % 
    % disp('5a. Generate the vector of integers from 1 to 10')
    % 
    % disp('5b. Generate the vector of integers from -1 to -10')
    % 
    % disp('5c. Generate the vector of integers from -1 to -10')
    % 
    % disp('5d. Generate a random vector within the unit cube') 

    %% Section 2 - Visualizing Vector Operations

    % disp('6. Plot the vectors [4,9]^T and [9, 3]^T using MATLAB. (Hint: use quiver)')
    % 
    % quiver(0,0,4,9,'off')
    % hold on
    % quiver(0,0,9,3,'off')
    % axis equal
    % 
    % disp('7. Add [4,9]^T and [9, 3]^T using MATLAB.')
    % result = [4,9] + [9,3]
    % 
    % disp('8. Visualize [4,9]^T + [9, 3]^T using MATLAB. (Hint: use quiver)')
    % quiver(4,9,9,3,'off')
    % hold on
    % quiver(9,3,4,9,'off')
    % axis equal
    % quiver(0,0,result(1),result(2),'off')
    % 
    % disp('9. Draw this 13 * [4,9]^T + 5 * [9, 3]^T using MATLAB. (Hint: use quiver)')
    % figure()
    % quiver(0,0,13 * 4, 13 * 9, 'off')
    % hold on
    % quiver(13 * 4, 13 * 9, 5 * 9, 5 * 3,'off')
    % axis equal
    % result = 13 * [4, 9] + 5 * [9,3]
    % quiver(0,0,result(1),result(2),'off')

    %% Section 3 - Generalizing Vector Operations for Matrices

    % disp('10. We generalize vector operations using matrices: multiplication')
    % 
    % A = [-8, -5; -2, 4; -3, 9]
    % B = [10; 1]
    % 
    % 
    % disp('11. Weird multiplication?')
    % 
    % A = [-4; 6]
    % B = [0, 6, -7]
    % 
    % disp('12. If there is a multiplication, does that mean there is an inverse?')
    % 
    % A = [2, 5; 1, 4]
    % 
    % 
    % disp('13. Can we solve systems Ax = b using the inverse? Yes!')
    % 
    % A = [2, 5; 1, 4];
    % b = [12; 9];

    %% Section 4 - Visualization Exercises

    % disp('Problem 1: Let A be the Tree-Shrub problem matrix:')
    % A = [4,9; 9,3]
    % disp('  Plot Ax for x = (1,0)^T')
    % disp('  Plot Ax for x = (0,1)^T')
    % disp('  Plot Ax for x = (1,1)^T')
    % disp('  Plot Ax for x = (-1,-1)^T')
    % disp('  Plot Ax for x = (-1,1)^T')
    % disp('  Plot Ax for x = (pi,2)^T')
    % 
    % disp('Problem 2: Let A be the idiot brother problem matrix:')
    % A = [4,4; 9,9]
    % disp('  Plot Ax for x = (1,0)^T')
    % disp('  Plot Ax for x = (0,1)^T')
    % disp('  Plot Ax for x = (1,1)^T')
    % disp('  Plot Ax for x = (-1,-1)^T')
    % disp('  Plot Ax for x = (-1,1)^T')
    % disp('  Plot Ax for x = (pi,2)^T')
    % 
    % disp('Problem 3: Let A be the matrix:')
    % A = [1,2,0; 0, 3, 1; 0, 0, 0]
    % disp('  Plot Ax for x = (1,0,0)^T')
    % disp('  Plot Ax for x = (0,1,0)^T')
    % disp('  Plot Ax for x = (0,0,1)^T')
    % disp('  Plot Ax for x = (1,1,0)^T')
    % disp('  Plot Ax for x = (1,1,1)^T')
    % disp('  Plot Ax for x = (pi, e, log(100, 10))^T')
    % 
    % disp('Problem 4: Choose 1000 random vectors, x, in the unit cube')
    % disp('  Plot Ax')


end