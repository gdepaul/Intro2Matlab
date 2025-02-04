function [] = lecture5()

%% Lecture 5 - 2D arrays and Functions 

%% Section 1 - Manipulating (and loading) 2D Arrays
    
    disp('1. Write a program to compute the product of two vectors u^T * v.')
    
    disp('2. Write a program to compute the product of two matrices.')

    disp('3. Given a square matrix, determine if its a magic square (all of the rows, columns, and diagonals add up to the same number) ')
    
    disp('4. Open an image.')
    A = rgb2gray(imread('egghead.jpeg'));

    disp('4a. Display that image.')

    disp('4b. Rotate that image 180 degrees and display it.')

    disp('4c. Invert the colors of the image and display it.')

%% Section 2 - Calling and Defining Custom Functions 

    disp('5. Use the function "createE" to solve for x for the system Ax = b. Use inv to check your answer')
    A = [2, 5; 1, 4];
    b = [12; 9];

    disp('6. Write a function to input an array and return its transpose.')

    disp('7. Write a function to tests to see if a sudoku puzzle has indeed been solved.')

    disp('8. Write a function to identify the first 100 prime numbers.')

    disp('9. Write a function to multiply two matrices together.')

%% Section 3 - Defining Useful Functions for your Upcoming Exams 

    disp('10. Given A and u, is u in the null space N(A)? (Function must return True or False)')
    A = [1, -3, -2; -5, 9, 1]
    u = [5; 3; -2]

    disp('11. Given A and u, is u in the null space N(A)? (Function must return True or False)')
    A = [3, -5, -3; 6, -2, 0; -8, 4, 1]
    u = [1; 3; -4]


    disp('12. Given A and w, is w in the column space Col(A)? (Function must return True or False)')
    A = [-2, 4; -1, 2] 
    w = [2; 1]


    disp('13. Given A and w, is w in the column space Col(A)? (Function must return True or False)')
    A = [7, 6, -4, 1; -5, -1, 0, -2; 9, -11, 7, -3; 19, -9, 7, 1] 
    w = [1; 1; -1; -3]


    disp('14. Are the vectors v1, v2, and v3 linearly independent? (Function must return True or False)')
    v1 = [1; 2; 3]
    v2 = [4; 5; 6]
    v3 = [2; 1; 0]


    disp('15. Are the columns of matrix A below linearly independent? (Function must return True or False)')
    A = [0, 1, 4; 1, 2, -1; 5, 8, 0]


    disp('16. Are the columns of matrix A below linearly independent? (Function must return True or False)')
    A = [5, -2, 3; -1, 0, -1; 0, -2, -2; -5, 7, 2]

end

function E = createE(n, multiplyThisRow, byAlpha, addToThisRow)

    E = eye(n);
    E(addToThisRow,multiplyThisRow) = byAlpha;

end