# Uncommon MATLAB Error Handling
This repository demonstrates an example of an uncommon error in MATLAB that might not be immediately obvious to a developer.  The code includes a function that can throw errors due to negative inputs or division by zero.  The solution provides a more robust implementation with better error handling and informative error messages.

## Bug
The bug lies in the functions `myFunction` and `someCalculation`. The `myFunction` checks if the input is negative, but doesn't handle other potential errors like division by zero within `someCalculation`. `someCalculation` might produce `Inf`, `NaN`, or throw an error depending on the input.  The error messages generated are not user-friendly.

## Solution
The solution improves error handling by using `try-catch` blocks and providing more descriptive error messages to aid debugging.  It also adds input validation to prevent common issues like division by zero.