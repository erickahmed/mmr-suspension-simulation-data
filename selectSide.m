function [fileName, frontrear, sheetName] = selectSide(input);

%input 1 is front, 2 is rear

fileName = 'SuspensionData_Exported.xlsx';

if rem(input, 2) == 1
    carSide = 'front';
elseif rem(input, 2) == 0
    carSide = 'rear';
else
    fprintf = 'An error occured!';
    end;