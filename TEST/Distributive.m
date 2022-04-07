clc;
clear;
%A = [0.3 0.4 0.5];
A = input("Enter Membership Function values for first fuzzy set: ");
%B = [0.2 0.7 0.4];
B = input("Enter Membership Function values for second fuzzy set: ");
%C = [0.1 0.2 0.9];
C = input("Enter Membership Function values for third fuzzy set: ");
BIC = min(B,C);
LHS = max(A,BIC);
AUB = max(A,B);
AUC = max(A,C);
RHS = min(AUB, AUC);

disp("Set A");
disp(A);
disp("Set B");
disp(B);
disp("Set C");
disp(C);
disp("Required to prove A∪(B ∩ C) = (A∪B) ∩ (A∪C)");
disp("B ∩ C = ");
disp(BIC);
disp("(A∪B) = ");
disp(AUB);
disp("(A∪C) = ")
disp(AUC);
disp("LHS = A∪(B ∩ C) = ");
disp(LHS);
disp("RHS = (A∪B) ∩ (A∪C) = ");
disp(RHS);
disp("LHS == RHS therefore Distributive Law Holds")
