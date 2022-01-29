clear;
clc;

prompt = 'Press "1" for front or "2" for rear: ';
side = input(prompt, 's');

[fileName, frontrear, sheetName] = selectSide(side);

if strcmp(frontrear, 'front')
    Parameter = who('-file', 'M22H_FrontSuspension_Data.mat');
elseif strcmp(frontrear, 'rear')
    Parameter = who('-file', 'M22H_RearSuspension_Data.mat');
    end;

t = array2table(Parameter);

fprintf('Initializing exporting process \n');

for i=1:length(61)
    writetable(t, fileName, 'Sheet', sheetName, 'WriteVariableNames', false);
    end;

fprintf('Finished exporting!\n')
