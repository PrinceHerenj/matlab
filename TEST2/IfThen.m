% Determine if X is A then Y is B else Y is C
%a = [0 0.8 0.6 1];
%b = [0.2 1 0.8 0];
%c = [0 0.4 1 0.8];

format bank;
disp("Let X = {a, b, c, d}");
disp("Let Y = {1, 2, 3, 4}");
disp("R = (A x B) U (A` x C)");
a = input("Enter MFs of X in A: ");
b = input("Enter MFs of Y in B: ");
c = input("Enter MFs of Y in C: ");
ac = 1-a;
axb = [min(a(1), b(1)) min(a(1), b(2)) min(a(1), b(3)) min(a(1), b(4));
       min(a(2), b(1)) min(a(2), b(2)) min(a(2), b(3)) min(a(2), b(4));
       min(a(3), b(1)) min(a(3), b(2)) min(a(3), b(3)) min(a(3), b(4));
       min(a(4), b(1)) min(a(4), b(2)) min(a(4), b(3)) min(a(4), b(4))];
fprintf("\nA x B\n");
disp(axb);
axc = [min(ac(1), c(1)) min(ac(1), c(2)) min(ac(1), c(3)) min(ac(1), c(4));
       min(ac(2), c(1)) min(ac(2), c(2)) min(ac(2), c(3)) min(ac(2), c(4));
       min(ac(3), c(1)) min(ac(3), c(2)) min(ac(3), c(3)) min(ac(3), c(4));
       min(ac(4), c(1)) min(ac(4), c(2)) min(ac(4), c(3)) min(ac(4), c(4))];
fprintf("\nA` x C\n");
disp(axc);
fprintf("\nFuzzy Rule R =\n");
disp(max(axb,axc));
