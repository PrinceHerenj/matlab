mam_fis = readfis('ClassFIS');
sug_fis = convertToSugeno(mam_fis);
subplot(1,2,1);
gensurf(mam_fis);
title('Mamdani System')
subplot(1,2,2);
gensurf(sug_fis);
title('Sugeno System')
