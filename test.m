selectSide(front);
%selectSide(rear);

if carSide == 'front'
    FileData = load('M22H_FrontSuspension_Data.mat');
elseif carSide == 'rear'
    FileData = load('M22H_RearSuspension_Data.mat');
else
    error('Error: %s is not a valid input', carSide)
end

fields = fieldnames(FileData);
fields = fieldnames(FileData);
for K = 1 : length(fields)
  thisvar = fields{K};
  thisdata = FileData.(thisvar);
  if ~isnumeric(thisdata)
    warning('Skipping field %s which is type %s instead of numeric', thisvar, class(thisvar))
  else
      if carSide == 'front'
        thisfile = sprintf('Front_%s.csv', thisvar);
      else
        thisfile = sprintf('Rear_%s.csv', thisvar);
      end
    csvwrite(thisfile, thisdata);
  end
end
