clc;
clear;

fis = mamfis('Name','Q');

fis = addInput(fis, [0 4],"Name", "I1");
fis = addInput(fis, [0 40],"Name", "I2");
fis = addOutput(fis, [0 20], "Name", "O");

fis = addMF(fis, "I1", "trapmf",[0 0 1 2], "Name", "LW");
fis = addMF(fis, "I1", "trimf",[1 2 3], "Name", "M");
fis = addMF(fis, "I1", "trapmf",[2 3 4 4], "Name", "H");

fis = addMF(fis, "I2", "trapmf",[0 0 10 20], "Name", "LW");
fis = addMF(fis, "I2", "trimf",[10 20 30], "Name", "M");
fis = addMF(fis, "I2", "trapmf",[20 30 40 40], "Name", "H");

fis = addMF(fis, "O", "trapmf",[0 0 5 10], "Name", "LW");
fis = addMF(fis, "O", "trimf",[5 10 15], "Name", "M");
fis = addMF(fis, "O", "trapmf",[10 15 20 20], "Name", "H");

fis.Rules = [];
r1 = "I1==LW & I2==LW => O==LW";
r2 = "I1==LW & I2==M => O==LW";
r3 = "I1==LW & I2==H => O==M";
r4 = "I1==M & I2==LW => O==LW";
r5 = "I1==M & I2==M => O==M";
r6 = "I1==M & I2==H => O==H";
r7 = "I1==H & I2==LW => O==M";
r8 = "I1==H & I2==M => O==H";
r9 = "I1==H & I2==H => O==H";
rulebase = [r1 r2 r3 r4 r5 r6 r7 r8 r9];
fis = addRule(fis, rulebase);

ruleedit(fis);
ruleview(fis);
surfview(fis);