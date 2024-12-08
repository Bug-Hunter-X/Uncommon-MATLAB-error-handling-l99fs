function result = myFunction(input)
  % Improved error handling
  try
    if input < 0
      error('Input must be non-negative');
    end
    result = someCalculation(input);
  catch ME
    errorMessage = ['Error in myFunction: ' ME.message];
    fprintf(errorMessage);
    result = NaN; % Handle the error appropriately
  end
end

function output = someCalculation(x)
  % Improved error handling to prevent division by zero
  if x == 0
    error('Cannot divide by zero!');
  else
    output = x / x; % Avoid division by zero
  end
end