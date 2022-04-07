clc;
clear;

x = (1.0: 1.0: 12.0);
y = trapmf(x, [2 7 9 12]);
plot(x, y);
fprintf("Fuzzy Set: \n{");
for i = 1:12
    fprintf("(%d, %.3f) ", x(i), y(i));
end
fprintf("}\n")
disp("Membership function at x = 10 :")
disp(y(10));