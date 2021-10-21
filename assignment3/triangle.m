function [output1] = triangle(tArray)
%Question 5
%   This function takes an input of a single 3-element array, and displays
%   whether or not the triangle is valid.
if tArray(1,1) + tArray(1,2) < tArray(1,3)
    disp ('Invalid Triangle')
else
    disp ('Valid Triangle')
end
end

