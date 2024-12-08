function result = myFunction(input)
  % Some code that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % This function might have an error
  output = x / 0; %this will produce an error if x = 0
end