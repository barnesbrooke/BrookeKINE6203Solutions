function [totalAmount] = moneyTotal(quarters,dimes,nickels,pennies)
%Question 4
%   This function takes in a number of quarters, dimes, nickels, and
%   pennies and return a total amount value.
totalAmount = (quarters*0.25) + (dimes*0.10) + (nickels*0.05) + (pennies*0.01);
end

