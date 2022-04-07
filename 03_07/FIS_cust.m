clc;
clear;

% creation of fuzzy inference system.
fis = mamfis('Name', 'Tipper');

% creation of input and output variables
fis = addInput(fis, [0 100], "Name", "Quality");
fis = addInput(fis, [0 100], "Name", "Service");
fis = addOutput(fis, [10 100], "Name", "TipValue");

% addition to first input variable
fis = addMF(fis, "Quality", "trapmf", [0 0 25 50], "Name", "NotGood");
fis = addMF(fis, "Quality", "trimf", [25 50 75], "Name", "Good");
fis = addMF(fis, "Quality", "trapmf", [50 75 100 100], "Name", "Delightful");

% addition to second input variable
fis = addMF(fis, "Service", "trapmf", [0 0 20 35], "Name", "Poor");
fis = addMF(fis, "Service", "trimf", [25 45 65], "Name", "Average");
fis = addMF(fis, "Service", "trapmf", [55 70 100 100], "Name", "Good");

% addition to output variable
fis = addMF(fis, "TipValue", "trapmf", [10 10 30 40], "Name", "Low");
fis = addMF(fis, "TipValue", "trimf", [35 50 65], "Name", "Average");
fis = addMF(fis, "TipValue", "trapmf", [60 70 100 100], "Name", "High");

% addition of rules
fis.Rules = [];
r1 = "Quality==NotGood & Service==Poor => TipValue=Low";
r2 = "Quality==NotGood & Service==Average => TipValue=Average";
r3 = "Quality==NotGood & Service==Good => TipValue=High";
r4 = "Quality==Good & Service==Poor => TipValue=Low";
r5 = "Quality==Good & Service==Average => TipValue=Average";
r6 = "Quality==Good & Service==Good => TipValue=High";
r7 = "Quality==Delightful & Service==Poor => TipValue=Average";
r8 = "Quality==Delightful & Service==Average => TipValue=Average";
r9 = "Quality==Delightful & Service==Good => TipValue=High";
rulebase = [r1 r2 r3 r4 r5 r6 r7 r8 r9];
fis = addRule(fis, rulebase);

ruleedit(fis);
ruleview(fis);
surfview(fis);
