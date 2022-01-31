function [fileName, frontrear, sheetName] = selectSide(input);

%input 1 is front, 2 is rear

fileName = 'SuspensionData_Exported.xlsx';

if rem(input, 2) == 1
    carSide = 'front';
    FileData = load('M22H_FrontSuspension_Data.mat');
elseif rem(input, 2) == 0
    carSide = 'rear';
    FileData = load('M22H_RearSuspension_Data.mat');
else
    error('Error: %s is not a valid input', carSide)
    end;