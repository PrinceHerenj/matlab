format bank;
c1 = input("First Chromosome: ");
c2 = input("Second Chromosome: ");
cr1 = input("Crossover point 1: ");
cr2 = input("Crossover point 2: ");
o1 = [c1(1:cr1) c2(cr1+1:cr2) c1(cr2+1:end)];
o2 = [c2(1:cr1) c1(cr1+1:cr2) c2(cr2+1:end)];
disp(o1);
disp(o2);
