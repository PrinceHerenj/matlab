A = [0.2 0.3; 
     0.1 0.6;
     0.3 0.5];
B = [0.2 0.3 0.6;
    0.1 0.2 0.4];
a11 = max(min(A(1,1),B(1,1)), min(A(1,2),B(2,1)));
a12 = max(min(A(1,1),B(1,2)), min(A(1,2),B(2,2)));
a13 = max(min(A(1,1),B(1,3)), min(A(1,2),B(2,3)));
a21 = max(min(A(2,1),B(1,1)), min(A(2,2),B(2,1)));
a22 = max(min(A(2,1),B(1,2)), min(A(2,2),B(2,2)));
a23 = max(min(A(2,1),B(1,3)), min(A(2,2),B(2,3)));
a31 = max(min(A(3,1),B(1,1)), min(A(3,2),B(2,1)));
a32 = max(min(A(3,1),B(1,2)), min(A(3,2),B(2,2)));
a33 = max(min(A(3,1),B(1,3)), min(A(3,2),B(2,3)));
C = [a11 a12 a13; a21 a22 a23; a31 a32 a33];
disp("Max Min Composition");
disp(C);