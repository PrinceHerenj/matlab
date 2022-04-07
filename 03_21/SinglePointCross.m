c1 = input("First Chromosome: ");
c2 = input("Second Chromosome: ");
cr = input("Crossover point: ");
o1 = [c1(1:cr) c2(cr+1:end)];
o2 = [c2(1:cr) c1(cr+1:end)];
disp(o1);
disp(o2);
