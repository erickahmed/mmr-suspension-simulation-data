clear;
clc;

prompt = 'Press F for front or R for rear';
str = input(prompt,'s');

if str == F
    content = who('-file', 'M22H_FrontSuspension_Data.mat');
    filename = 'FrontSuspension_Exported.xlsx';
    sheetName = 'Front';
elseif str == R
    content = who('-file', 'M22H_RearSuspension_Data.mat');
    filename = 'RearSuspension_Exported.xlsx';
    sheetName = 'Rear';

fprintf('Initializing exporting process');

for i=1:length(content)
    writetable(content, filename, 'Sheet', sheetName, 'WriteVariableNames', true);
    end;
fprintf('Finished exporting')






