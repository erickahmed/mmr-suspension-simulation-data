function [frontrear, fileName, sheetName] = selectSide(input);

%input 1 is front, 2 is rear

if rem(input, 2) == 0
    frontrear = 'front';
    fileName = 'FrontSuspension_Exported.xlsx';
    sheetName = 'Front';
elseif rem(input, 2) ~= 0
    frontrear = 'rear';
    fileName = 'RearSuspension_Exported.xlsx';
    sheetName = 'Rear';
else
    fprintf = 'An error occured!';
    end;