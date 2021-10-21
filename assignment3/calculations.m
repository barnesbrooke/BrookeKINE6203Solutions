function [SoN,Difference,Product, Max] = calculations(num1,num2)
%Question 2
%   This function takes two numbers as input and returns the
%   sum, difference, product, and max values of the two numbers.
SoN = num1 + num2;
Difference = num1 - num2;
Product = num1*num2;
if num1 > num2
    Max = num1
else
    Max = num2
end
disp([SoN, Difference, Product, Max])
end

