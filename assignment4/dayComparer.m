function [gains] = dayComparer(SubjectID,DayA,DayB)
% Comparing Isometric Strength Between Days
%   This function takes the subject IDs and two different days as inputs and
%   returns a matrix containing the subject IDs of subjects who had an
%   increase from the first day to the second day.
for b=1:length(SubjectID)
    if (DayB(b) > DayA(b)) % Comparing the values from the DayA to DayB to see if there was an increase
        comparingDays(b) = SubjectID(b); % Displays all SubjectIDs with zeros in places were increases in isometric strength were not seen
    end
end
comparingDays(comparingDays == 0) = [];% Supress zero values in the vector
gains = comparingDays'; % Changing the comparingDays row vector to a column vector
end