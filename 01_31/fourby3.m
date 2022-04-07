%create a 3*3 matrix A then copy 2nd and 3rd row to create a 4*3 matrix
A = [1 0 2; 2 4 2; 7 8 2]
B = [A(2,:); A(3,:); A(2,:); A(3,:)]
C = A([2, 3, 2, 3], :)