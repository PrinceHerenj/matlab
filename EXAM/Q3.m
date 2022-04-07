clc;
clear;

%I1 = input('Enter x for input 1: ');
%I2 = input('Enter x for input 2: ');
%I3 = input('Enter x for input 3: ');
I = input("Enter x for input as array: ");

B = input('Enter Bias: ');

fprintf('X for Inputs are %v', I);
fprintf('Enter Weightage for synaptic links: \n')
W11 = input('from I1 to O1: ');
W12 = input('from I1 to O2: ');
W21 = input('from I2 to O1: ');
W22 = input('from I2 to O2: ');
W31 = input('from I3 to O1: ');
W32 = input('from I3 to O2: ');

O1 = (W11*I(1))+(W21*I(2))+(W31*I(3))+B;
O2 = (W12*I(1))+(W22*I(2))+(W32*I(3))+B;

fprintf('Output: \n');
fprintf('O1 = %d\nO2 = %d\n', O1,O2);