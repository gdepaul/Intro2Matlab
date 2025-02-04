function [] = lecture4()

%% Lecture 4 - For loops and 1D Arrays. These fundamental structures are
%%              necessary for solving many problems programatically. 

%% Section 1 - The basic structure of a For Loop

    disp('1. Write a program to compute the sum of the first 10 natural numbers.')

    disp('2. Given a value n, calculate \sum_{i = 1}^n i^5')

    disp('3. Write a program to display the n terms of a harmonic series and their sum. 1 + 1/2 + 1/3 + 1/4 + 1/5 ... 1/n terms')

    disp('4. Recall the Maclaurin series exp(x) = 1 + x + x^2 / 2! + x^3 / 3! + .... Calculate e(1) using a for loop.')

%% Section 2 - Accessing a 1D Array

    disp('5. Access specific elements of an array.')
    A = [1,2,3,4,5,6,7,13]

    disp('   5a. Access the first element of the array.')


    disp('   5b. Access the third element of the array.')



    disp('   5c. Access the ninth element of the array if it has a ninth element. Otherwise, print CANT ACCESS ELEMENT.')


    disp('   5d. Access the last element of the array without hardcoding the index.')

%% Section 3 - For Loops as a way of Traversing a 1D Array 

    disp('6. Calculate the mean and sum of all numbers within a list.')
    A = [1,6,3,8,2,0,3]

    disp('7. Write a program to find the maximum and minimum elements in an array.')
    A = [1,6,3,8,2,0,3]

    disp('8. Reverse an array.')
    A = [1, 2, 3, 4, 5]

    disp('9. Write a program to merge two arrays of the same size sorted in descending order') 
    A = [1,3,4,7,8]
    B = [2,5,6,9,10]

%% Section 4 - Learning To Sort 
    
    disp('10. Given an array, sort it using selection sort.')
    A = [5, 9, 1]

    disp('11. Given an array, sort it using insertion sort.')
    A = [5, 9, 1]

%% Section 5 - Bringing it all together  

    disp('12. Count the number of even numbers in the following list.')
    A = [25, 47, 42, 56, 32]

    disp('13. You have 100 doors and a person steps out of each door. They then close the door behind them, while opening every closed door and closing every open door after the door they exited. What are the closed doors after everyone has finished opening and closing doors.')

    disp('14. Write a program to separate odd and even integers into separate arrays.')
    A = [25, 47, 42, 56, 32]

end