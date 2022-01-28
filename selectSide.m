function [content, fileName, sheetName] = selectSide(input);

%input 1 is front, 2 is rear

if rem(input, 2) == 0
    content = who('-file', 'M22H_FrontSuspension_Data.mat');
    fileName = 'FrontSuspension_Exported.xlsx';
    sheetName = 'Front';
elseif rem(input, 2) ~= 0
    content = who('-file', 'M22H_RearSuspension_Data.mat');
    fileName = 'RearSuspension_Exported.xlsx';
    sheetName = 'Rear';
else
    fprintf = 'An error occured!';
    end;


