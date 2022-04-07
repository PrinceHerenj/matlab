clc;
clear;
A = input("Enter Membership Function values for first fuzzy set: ");
%A = [0.4 0.5 0.2];
CA = 1 - A;
B = input("Enter Membership Function values for second fuzzy set: ");
%B = [0.6 0.8 0.3];
CB = 1 - B;
CUN = 1 - max(A,B);
ICACB = min(CA, CB);

disp("Set A");
disp(A);
disp("Set A's Compliment");
disp(CA);
disp("Set B");
disp(B);
disp("Set B's Compliment");
disp(CB);

disp("Required to Prove: (A∪B)` = A`∩ B`");
disp("LHS = (A∪B)` = ");
disp(CUN);
disp("RHS = A`∩ B` =");
disp(ICACB);
disp("LHS == RHS, Hence DeMorgan's Law Holds")
