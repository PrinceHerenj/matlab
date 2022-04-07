clc;
clear;

n = input("Enter N: ");
fact = 1;
for i= 1:n
    fact = fact * i;
end
fprintf("Factorial of %d = %d \n", n, fact);