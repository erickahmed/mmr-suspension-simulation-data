clear;
clc;

prompt = 'Press "1" for front or "2" for rear: ';
side = input(prompt, 's');

selectSide(side);

fprintf('Initializing exporting process \n');

for i=1:length(content)
    writetable(content, filename, 'Sheet', sheetName, 'WriteVariableNames', true);
    end;
    
fprintf('Finished exporting')
