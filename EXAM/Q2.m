clc;
clear;

cra1 = randi([0 1], 1, 10);
cra2 = randi([0 1], 1, 10);
disp('Binary Chromosomes:')
disp(cra1);
disp(cra2);

% separate functions for input of chromosomes
% c1 = input('Enter First Chromosome: ');
% c2 = input('Enter Second Chromosome: ');

cr1 = input('Enter Crossover point 1: ');
cr2 = input('Enter Crossover point 2: ');

o1 = [cra1(1:cr1) cra2(cr1+1: cr2) cra1(cr2+1: end)];
o2 = [cra2(1:cr1) cra1(cr1+1: cr2) cra2(cr2+1: end)];

disp('Chromosomes after Crossover: ');
disp(o1);
disp(o2);