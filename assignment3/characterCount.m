function [length,firstCharacter,lastCharacter] = characterCount(str)
%Question 9
%   This function takes a string as input and returns the length of the
%   string, along with the first and last characters of the string.
length = strlength(str)
firstCharacter = str([1])
lastCharacter = str([end])
end

