function [] = lecture9()

%% Lecture 9 - Singular Value Decomposition and Image Denoising 

%% Basics of Singular Values and the relationship with Square Matrices

disp('1. Get the eigenvalues and eigenvectors of the matrix A')
A = [1,2; 4,3];
disp('a.) Plot a scatter plot of a unit circle in the x,y place')
disp('b.) Multiply each of those points by the matrix A. Plot those points in the x,y plane.')
disp('c.) Plot each of eigenvectors multiplied by their eigenvalues using quiver. Is there a geometric relationship with what you have plotted?')
disp('d.) Plot each of U vectors multiplied by their singular value using quiver. Is there a geometric relationship with what you have plotted?')
disp('e.) Plot each of V vectors multiplied by their singular value using quiver. Is there a geometric relationship with what you have plotted?')
disp('f.) Are there relationships between U,V and the eigenvectors of A?')
disp('g.) Are there relationships between the eigenvalues and the singular values of A?')

disp('2. Get the eigenvalues and eigenvectors of the matrix A')
A = [1,2,1;6,-1,0;-1,-2,-1];
disp('a.) Plot a scatter plot of a unit circle in the x,y place')
disp('b.) Multiply each of those points by the matrix A. Plot those points in the x,y plane.')
disp('c.) Plot each of eigenvectors multiplied by their eigenvalues using quiver. Is there a geometric relationship with what you have plotted?')
disp('d.) Plot each of U vectors multiplied by their singular value using quiver. Is there a geometric relationship with what you have plotted?')
disp('e.) Plot each of V vectors multiplied by their singular value using quiver. Is there a geometric relationship with what you have plotted?')
disp('f.) Are there relationships between U,V and the eigenvectors of A?')
disp('g.) Are there relationships between the eigenvalues and the singular values of A?')

disp('3. Construct a 1000x1000 normal Gaussian matrix. ')
A = normrnd(0, 1, 1000, 1000);
disp('a.) Compare the distribution of eigenvalues and singular values.')
disp('b.) Are there relationships between the eigenvalues and the singular values of A?')

disp('4. Construct a 750x2000 normal Gaussian matrix.')
A = normrnd(0, 1, 750, 2000);
disp('a.) Compare the distribution of singular values to the last matrix.')
disp('b.) Are there relationships between the singular values of this matrix and the singular values of the previous matrix?')

%% Low Rank Image Appoximations

disp('5. Perform Singular Value Decomposition to Obtain the Low Rank Image')
disp('a.) Extract and display the egghead image (use imshow)')
A = im2double(rgb2gray(imread('memorial_union.jpeg')));
disp('b.) Select the 20 primary singular values')
disp('c.) Calculate and display low rank approximation')


disp('6. Perform Singular Value Decomposition to Obtain the Low Rank Image')
disp('a.) Extract and display the uc davis logo image (use imshow)')
A = im2double(rgb2gray(imread('uc_davis_logo.jpg')));
disp('b.) Select the 20 primary singular values')
disp('c.) Calculate and display low rank approximation')

%% Pseudo-Inverses 

disp('7. Given the matrix A')
disp('a.) Calculate the pseudo-inverse of A')
disp('b.) What do you get for A * pseudo-inverse?')
A = [2, -1, 0; 4, 3, -2];

disp('8. Given the X,Y data below.')
X = 0:0.5:20;
Y = 3 * X - 1 + normrnd(0,5,1,length(X));
disp('a.) Construct the coefficient matrix A to find a linear fit between X and y. (We did this in lecture 7)')
disp('b.) Find the Pseudo-inverse of the matrix A')
disp('c.) Notice what happens when you multiply both sides by the pseudo-inverse.')
disp('d.) Measure the overall regression error.')
disp('e.) Plot the points as a scatter plot and the regression as a curve on top.')


%% Principal Component Analysis

disp('9. Perform PCA in on the Iris dataset using SVD. ')
disp('a.) Use the first 2 U vectors to project into R2. Is it linearly separable? ')
disp('b.) Use the first 3 U vectors to project into R3. Is it linearly separable? ')
disp('c.) Use the first 3 V vectors to project into R3. Is it linearly separable? ')
disp('d.) Is there a benefit to using U over V, or vice versa?')
disp('e.) Is there a benefit to normalizing X before running PCA?')

M = xlsread("iris.xlsx");
X = M(:,1:4);
% X = normalize(X);
y = M(:,5);

disp('10. Perform PCA on the breast cancer dataset using SVD. ')
disp('a.) Use the first 2 U vectors to project into R2. Is it linearly separable? ')
disp('b.) Use the first 3 U vectors to project into R3. Is it linearly separable? ')
disp('c.) Use the first 3 V vectors to project into R3. Is it linearly separable? ')
disp('d.) Is there a benefit to using U over V, or vice versa?')
disp('e.) Is there a benefit to normalizing X before running PCA?')

M = xlsread("breast-cancer-wisconsin.xlsx");
[m,n] = size(M);
X = M(:,1:n-1);
% X = normalize(X);
y = M(:,n);

disp('11. Perform PCA on the winequality dataset using SVD.')
disp('a.) Use the first 2 U vectors to project into R2. Is it linearly separable? ')
disp('b.) Use the first 3 U vectors to project into R3. Is it linearly separable? ')
disp('c.) Use the first 3 V vectors to project into R3. Is it linearly separable? ')
disp('d.) Is there a benefit to using U over V, or vice versa?')
disp('e.) Is there a benefit to normalizing X before running PCA?')

M = xlsread("winequality-red.xlsx");
[m,n] = size(M);
X = M(:,1:n-1);
% X = normalize(X);
y = M(:,n);

end


function Z = project_matrix_onto_vector(A, v) 

    [m,n] = size(A);
    Z = zeros(m,1);
    
    for i=1:m
       Z(i,:) = projection_of_b_onto_a(A(i,:)',v);
    end
 
end

function z = projection_of_b_onto_a(b,a)
    
    z = (transpose(b)*a)/(transpose(a)*a);

end