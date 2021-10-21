function [result] = evenOrOdd(num1,num2)
%Question 3
%   This function takes two numbers as inputs and returns "Woo" if their
%   sum is even, and "Hah" if their sum is odd.
sum = num1 + num2;
if (rem(sum,2)== 0)
    disp('Woo')
else
    disp('Hah')
end
end

