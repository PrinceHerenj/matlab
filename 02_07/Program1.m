%A = [0.2 0.7 0.5];
A = input("Enter Membership Functions for first fuzzy set: ");
%B = [0.5 0.3 1.0];
B = input("Enter Membership Functions for second fuzzy set: ");
p = [min(A(1,1), B(1,1)) min(A(1,1), B(1,2)) min(A(1,3), B(1,2))];
q = [min(A(1,1), B(1,3)) min(A(1,2), B(1,1)) min(A(1,2), B(1,3))];
r = [min(A(1,2), B(1,2)) min(A(1,3), B(1,1)) min(A(1,3), B(1,3))];
Cp = max(p);
Cq = max(q);
Cr = max(r);
disp("Membership of p in C = "+Cp);
disp("Membership of q in C = "+Cq);
disp("Membership of r in C = "+Cr);