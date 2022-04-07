clc;
clear;

x = (1.0: 1.0: 12.0);
y = trapmf(x, [2 7 9 12]);
plot(x, y);
disp("Membership function at x = 10 :")
disp(y(10));