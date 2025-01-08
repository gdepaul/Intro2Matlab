function [] = lecture2()

%% Lecture 2 - Adding Complexity by way of Vectors. Variables don't have to
%%              be scalar values! They can have dimensionality! 

%% Section 1 - Basic Operations with Vectors

    disp('1. Everything is a vector in matlab')
    X = [1 2 3 4]
    Y = transpose(X)

    disp('2. Every vector has an inherent size (or dimension)')
    size(X)
    size(Y)

    disp('3 You can perform operations between vectors: Addition')
    X = [1 2 3] 
    Y = [4 5 6]
    X + Y

    disp('4 Scalar Multiplication')
    X = [3 5 6 9]
    3.14 * X

    disp('5 Dot Product')
    X = [1 2 3] 
    Y = [4 5 6]
    dot(X,Y)

    %% Section 2 - Visualizing Vector Operations

    disp('6. Plot the vectors [4,9]^T and [9, 3]^T using MATLAB. (Hint: use quiver)')

    quiver(0,0,4,9,'off')
    hold on
    quiver(0,0,9,3,'off')
    axis equal

    disp('7. Add [4,9]^T and [9, 3]^T using MATLAB.')
    result = [4,9] + [9,3]

    disp('8. Visualize [4,9]^T + [9, 3]^T using MATLAB. (Hint: use quiver)')
    quiver(4,9,9,3,'off')
    hold on
    quiver(9,3,4,9,'off')
    axis equal
    quiver(0,0,result(1),result(2),'off')

    disp('9. Draw this 13 * [4,9]^T + 5 * [9, 3]^T using MATLAB. (Hint: use quiver)')
    figure()
    quiver(0,0,13 * 4, 13 * 9, 'off')
    hold on
    quiver(13 * 4, 13 * 9, 5 * 9, 5 * 3,'off')
    axis equal
    result = 13 * [4, 9] + 5 * [9,3]
    quiver(0,0,result(1),result(2),'off')

    %% Section 3 - Generalizing Vector Operations for Matrices

    disp('10. We generalize vector operations using matrices')

end