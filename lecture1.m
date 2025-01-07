function [] = lecture1()

    disp('1. Everything is a vector in matlab')
    X = [1 2 3 4]
    Y = transpose(X)

    disp('2. Every vector has an inherent size (or dimension)')
    size(X)
    size(Y)

    disp('3.1 You can perform operations between vectors: Addition')
    X = [1 2 3] 
    Y = [4 5 6]
    X + Y

    disp('3.2 Scalar Multiplication')
    X = [3 5 6 9]
    3.14 * X

    disp('3.3 Dot Product')
    X = [1 2 3] 
    Y = [4 5 6]
    dot(X,Y)

    disp('4. We can define functions on our vectors')
    X = 0:pi/100:2*pi;
    f = @(x) sin(x^2);
    Y = arrayfun(f,X);

    disp('5. We can plot those functions on our vectors')
    figure();
    plot(X,Y);

    disp('6. We can define functions on multiple vectors simultaneously')
    [X,Y] = meshgrid(0:pi/10:2*pi,0:pi/10:2*pi);
    g = @(x,y) sin(x) + cos(y);
    Z = arrayfun(g,X, Y);

    disp('7. We can then plot those multi-dimensional functions')
    figure();
    surf(X,Y,Z);
end