function [] = lecture8()

% %% Lecture 8 - Eigenvalue Decomposition, Low Rank Approximations and Principal Component Analysis
% 
% %% Basics of Eigenvalues and Eigenvectors
% 
% disp('1. Get the eigenvalues and eigenvectors of the matrix A')
% A = [1,2; 4,3]
% disp('Plot a scatter plot of a unit circle in the x,y place')
% disp('Multiply each of those points by the matrix A. Plot those points in the x,y plane.')
% disp('Plot each of eigenvectors using quiver. Is there a geometric relationship with what you have plotted?')
% 
% 
% disp('2. Get the eigenvalues and eigenvectors of the matrix A')
% A = [1,2,1;6,-1,0;-1,-2,-1]
% disp('Plot a scatter3 plot of a unit sphere in the 3-space')
% disp('Multiply each of those points by the matrix A. Plot those points in 3-space.')
% disp('Plot each of eigenvectors using quiver3. Is there a geometric relationship with what you have plotted?')
% 
% %% Raising Matrices to Large Powers
% 
% disp('3. Linear Pattern Prediction')
% A = [1,1;1,0]
% x = [1; 0]
% disp('a.) What numbers does Ax look like?')
% disp('b.) What numbers does A^2x look like?')
% disp('c.) What numbers does A^3x look like?')
% disp('d.) What numbers does A^4x look like?')
% disp('e.) What pattern of numbers come from powers of A?')
% disp('f.) Calculate the 100th number in the sequence using Eigenvalue Decomposition. ')
% 
% %% Low Rank Image Appoximations
% 
% disp('4. Perform Eigenvalue Diagonalization to Obtain the Low Rank Image')
% disp('a.) Extract and display the egghead image (use imshow)')
% A = im2double(rgb2gray(imread('egghead.jpeg')));
% disp('b.) Select the 20 primary eigenvectors')
% disp('c.) Calculate and display low rank approximation')
% 
% 
% disp('5. Perform Eigenvalue Diagonalization to Obtain the Low Rank Image')
% disp('a.) Extract and display the uc davis logo image (use imshow)')
% A = im2double(rgb2gray(imread('uc_davis_logo.jpg')));
% disp('b.) Select the 20 primary eigenvectors')
% disp('c.) Calculate and display low rank approximation')
% 
% 
% %% Principal Component Analysis
% 
% disp('6. Perform PCA on the Iris dataset. Is it linearly separable?')
% 
M = xlsread("iris.xlsx");
X = M(:,1:4);
y = M(:,5);

display_iris_plotmatrix(X,y)

Sigma = cov(X);

[V,D] = eig(Sigma);

comp1 = project_matrix_onto_vector(X,transpose(V(1,:)));
comp2 = project_matrix_onto_vector(X,transpose(V(2,:)));
figure()
scatter(comp1, comp2, 50, y, 'filled')

% disp('7. Perform PCA on the breast cancer dataset. Is it linearly separable?')
% M = xlsread("breast-cancer-wisconsin.xlsx");
% [m,n] = size(M);
% X = M(:,1:n-1);
% y = M(:,n);
% 


% disp('8. Perform PCA on the winequality dataset. Is it linearly separable?')
% M = xlsread("winequality-red.xlsx");
% [m,n] = size(M);
% X = M(:,1:n-1);
% y = M(:,n);
% 
% muX = mean(X)
% varX = var(X)
% 
% X = (X - muX) ./ varX
% 
% Sigma = cov(X);
% 
% [V,D] = eig(Sigma);
% 
% comp1 = project_matrix_onto_vector(X,transpose(V(1,:)));
% comp2 = project_matrix_onto_vector(X,transpose(V(2,:)));
% comp3 = project_matrix_onto_vector(X,transpose(V(3,:)));
% 
% figure()
% scatter3(comp1, comp2, comp3, 50, y, 'filled')

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

function [] = display_iris_plotmatrix(A,y)
    figure()
    [~,ax]=gplotmatrix(A,[],y);
    ax(1,1).YLabel.String='Sepal L';
    ax(2,1).YLabel.String='Sepal W';
    ax(3,1).YLabel.String='Petal L';
    ax(4,1).YLabel.String='Petal W';
    ax(4,1).XLabel.String='Sepal L';
    ax(4,2).XLabel.String='Sepal W';
    ax(4,3).XLabel.String='Petal L';
    ax(4,4).XLabel.String='Petal W';
end 

