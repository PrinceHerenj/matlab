u = input('Enter the membership value of first fuzzy set: ');
v = input('Enter the membership value of second fuzzy set: ');
w = max(u, v);
x = min(u, v);
q = 1 - u;
r = 1 - v;
disp("First Fuzzy set: "+ u);
disp(w)