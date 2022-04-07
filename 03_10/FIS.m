clc;
clear;

fis = mamfis('Name', 'WashingMachine');

fis = addInput(fis, [0 100], "Name", "TypeOfCloth");
fis = addInput(fis, [0 10], "Name", "MassOfCloth");
fis = addInput(fis, [0 100], "Name", "TypesOfDirt");
fis = addInput(fis, [0 100], "Name", "LevelOfDirt");
fis = addInput(fis, [0 100], "Name", "TypeOfDetergent");
fis = addInput(fis, [0 100], "Name", "TypeOfWash");
fis = addInput(fis, [0 100], "Name", "WaterLevel");
fis = addInput(fis, [0 100], "Name", "WaterTemp");
fis = addOutput(fis, [0 100], "Name", "TimeRequired");

fis = addMF(fis, "TypeOfCloth", "trimf", [0 12.5 25],"Name", "Silk");
fis = addMF(fis, "TypeOfCloth", "trimf", [25 37.5 50],"Name", "Cotton");
fis = addMF(fis, "TypeOfCloth", "trimf", [50 62.5 75],"Name", "Woolen");
fis = addMF(fis, "TypeOfCloth", "trimf", [75 87.5 100],"Name", "Jeans");

fis = addMF(fis, "MassOfCloth", "trimf", [1 2 3], "Name", "1-3lb");
fis = addMF(fis, "MassOfCloth", "trimf", [3 4 5], "Name", "3-5lb");
fis = addMF(fis, "MassOfCloth", "trimf", [7 8.5 10], "Name", "7-10lb");

fis = addMF(fis, "TypesOfDirt", "trimf", [0 30 50], "Name", "Greasy");
fis = addMF(fis, "TypesOfDirt", "trimf", [50 70 100], "Name", "NotGreasy");

fis = addMF(fis, "LevelOfDirt", "trimf", [0 25 50], "Name", "Low");
fis = addMF(fis, "LevelOfDirt", "trimf", [25 50 75], "Name", "Medium");     
fis = addMF(fis, "LevelOfDirt", "trimf", [50 75 100], "Name", "High");

fis = addMF(fis, "TypeOfDetergent", "trimf", [0 30 60], "Name", "Solid");
fis = addMF(fis, "TypeOfDetergent", "trimf", [40 70 100], "Name", "Liquid");

fis = addMF(fis, "TypeOfWash", "trimf", [0 25 50], "Name", "Low");
fis = addMF(fis, "TypeOfWash", "trimf", [25 50 75], "Name", "Medium");
fis = addMF(fis, "TypeOfWash", "trimf", [50 75 100], "Name", "High");

fis = addMF(fis, "WaterLevel", "trimf", [0 25 50], "Name", "Low");
fis = addMF(fis, "WaterLevel", "trimf", [25 50 75], "Name", "Medium");
fis = addMF(fis, "WaterLevel", "trimf", [50 75 100], "Name", "High");

fis = addMF(fis, "WaterTemp", "trimf", [0 25 50], "Name", "Cool");
fis = addMF(fis, "WaterTemp", "trimf", [25 50 75], "Name", "Warm");
fis = addMF(fis, "WaterTemp", "trimf", [50 75 100], "Name", "Hot");

fis = addMF(fis, "TimeRequired", "trimf", [10 20 30], "Name", "VeryShort");
fis = addMF(fis, "TimeRequired", "trimf", [20 30 40], "Name", "Short");
fis = addMF(fis, "TimeRequired", "trimf", [35 45 55], "Name", "Medium");
fis = addMF(fis, "TimeRequired", "trimf", [50 60 70], "Name", "High");
fis = addMF(fis, "TimeRequired", "trimf", [70 80 100], "Name", "VeryHigh");

r1 = "TypeOfCloth==Silk & MassOfCloth==1-3lb => TimeRequired=VeryShort";
r2 = "TypeOfCloth==Silk & MassOfCloth==3-5lb => TimeRequired=Medium";
r3 = "TypeOfCloth==Silk & MassOfCloth==7-10lb => TimeRequired=VeryHigh";
r4 = "TypeOfCloth==Silk & TypesOfDirt==Greasy & LevelOfDirt==Low => TimeRequired=Short";
r5 = "TypeOfCloth==Silk & TypesOfDirt==Greasy & LevelOfDirt==Medium => TimeRequired=Medium";
r6 = "TypeOfCloth==Silk & TypesOfDirt==Greasy & LevelOfDirt==High => TimeRequired=High";
r7 = "TypeOfCloth==Silk & TypesOfDirt==NotGreasy & LevelOfDirt==Low => TimeRequired=VeryShort";
r8 = "TypeOfCloth==Silk & TypesOfDirt==NotGreasy & LevelOfDirt==Medium => TimeRequired=Short";
r9 = "TypeOfCloth==Silk & TypesOfDirt==NotGreasy & LevelOfDirt==High => TimeRequired=Medium";
r10 = "TypeOfCloth==Silk & TypeOfDetergent==Solid & WaterTemp==Cool => TimeRequired=High";
r11 = "TypeOfCloth==Silk & TypeOfDetergent==Solid & WaterTemp==Warm=> TimeRequired=Medium";
r12 = "TypeOfCloth==Silk & TypeOfDetergent==Solid & WaterTemp==Hot => TimeRequired=Short";
r13 = "TypeOfCloth==Silk & TypeOfDetergent==Liquid & WaterTemp==Cool => TimeRequired=Medium";
r14 = "TypeOfCloth==Silk & TypeOfDetergent==Liquid & WaterTemp==Warm=> TimeRequired=Short";
r15 = "TypeOfCloth==Silk & TypeOfDetergent==Liquid & WaterTemp==Hot => TimeRequired=VeryShort";

fis.Rules = [];
rulebase = [r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15];
fis = addRule(fis, rulebase);

ruleedit(fis);
ruleview(fis);
surfview(fis); 