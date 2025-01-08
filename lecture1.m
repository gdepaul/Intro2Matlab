function [] = lecture1()

%% Lecture 1 - Matlab is a calculator, like the TI-89. It's 
%%              capable of processing many mathematical formulae. You also 
%%              have access to a rich set of manpages that detail how to 
%%              program in Matlab. 

%% Section 1 - Basic Mathematical Expressions
    disp('1. Declare variables x and y')
    % x = 
    % y = 

    disp('2. Calculate x + 2y')


    disp('3. Calculate x times y')


    disp('4. Calculate x divided by y')
    

    disp('5. Calculate x moded by 5')


    disp('6. Calculate 2(5y) + (9/7)x')


    disp('7. If x and y are sides of a right triangle, calculate the hypotenuse')
    
    
%% Section 2 - Matlab as a graphing calculator

    disp('1. Specify a domain')
    X = 0:pi/100:2*pi;

    disp('2. Define an interesting mathematical function to plot')
    f = @(x) %% insert interesting funciton;
    Y = arrayfun(f,X);

    disp('3. We can then plot that function')
    figure();
    plot(X,Y);
end