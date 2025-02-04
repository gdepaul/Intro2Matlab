function [] = lecture3()

%% Lecture 3 - Matlab can ask questions by way of Boolean expression. We 
%%              want to develop the skills to ask interesting questions 
%%              and have Matlab tell us the answer. 

%% Section 1 - Writing Basic Control Statements (We'll do this together)

disp('1. Determine which quadrant (I, II, III, IV) a given (x,y) points is in.')



disp('2. Determine if a point is on the boundary, inside, or outside a 2D circle provided the center and radius of the circle is specified.')


%% Section 2 - RREF is the most important algorithm ever invented. (We'll do this together) 

disp('3. Use Matlab rref to find the linearly independent vectors of the following matrix A')
A = [1, 2, 1, 2; 2, 4, 3, 5; 3, 6, 3, 6; 4, 8, 4, 8]

rref(A)

disp('3a. What is the dimension of the column space Col(A)?')

disp('3b. What is the dimension of the null space Null(A)?')

disp('3c. Verify the Rank-Nullity Theorem')


%% Section 3 - Using Control Statements and RREF to answer fundamental LA Problems 

disp('4. Given A and u, is u in the null space N(A)? (Computer must say Yes or No)')
    A = [1, -3, -2; -5, 9, 1]
    u = [5; 3; -2]

disp('5. Given A and u, is u in the null space N(A)? (Computer must say Yes or No)')
    A = [3, -5, -3; 6, -2, 0; -8, 4, 1]
    u = [1; 3; -4]


disp('6. Given A and w, is w in the column space Col(A)? (Computer must say Yes or No)')
    A = [-2, 4; -1, 2] 
    w = [2; 1]


disp('7. Given A and w, is w in the column space Col(A)? (Computer must say Yes or No)')
    A = [7, 6, -4, 1; -5, -1, 0, -2; 9, -11, 7, -3; 19, -9, 7, 1] 
    w = [1; 1; -1; -3]


disp('8. Are the vectors v1, v2, and v3 linearly independent? (Computer must say Yes or No)')
    v1 = [1; 2; 3]
    v2 = [4; 5; 6]
    v3 = [2; 1; 0]


disp('9. Are the columns of matrix A below linearly independent? (Computer must say Yes or No)')
    A = [0, 1, 4; 1, 2, -1; 5, 8, 0]


disp('10. Are the columns of matrix A below linearly independent? (Computer must say Yes or No)')
    A = [5, -2, 3; -1, 0, -1; 0, -2, -2; -5, 7, 2]

    
end