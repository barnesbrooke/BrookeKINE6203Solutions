function [outputArg1] = isitprime(num1)
%Question 6
%   This function takes a number as input and returns true if the number is
%   prime, and false if it is not prime.
outputArg1 = isprime(num1);
if outputArg1 == 1
    disp('True')
else
    disp('False')
end

