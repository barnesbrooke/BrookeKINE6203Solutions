% KINE 6203 Assignment 4
%
% Submitted by: Brooke Barnes
%
% Date: November 4, 2021
%
% 
% This function imports column as a separate vector, using the column
% headings as variable names.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803.csv", [2, Inf]);
%
% This function produces two matrices (one for males and one for females) containing the individual mean isometric strength values
% across all three days of lifting, along with a pair of single mean values (mean of
% subject means) - one for males and one for females.
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);
%
% This function takes the subject IDs and two different days as inputs and
% returns a matrix containing the subject IDs of subjects who had an
% increase from the first day to the second day.
day1toDay2 = dayComparer(SubjectID,Day1,Day2) % Comparison of Day 1 and Day 2
day2toDay3 = dayComparer(SubjectID,Day2,Day3) % Comparison of Day 2 and Day 3
%
% This will weight normalize the isokinetic data and calculate the group means for each day.
Weight = Weight';
for w = i:25
    normDay1(w)=Weight(w)/Day1(w);
    normDay2(w)=Weight(w)/Day2(w);
    normDay3(w)=Weight(w)/Day3(w);
end
% Changing normDay row vectors to column vectors
normDay1=normDay1';
normDay2=normDay2';
normDay3=normDay3';
% Calculating weight normalized group means and storing the values as
% variables
normDay1mean = mean(normDay1);
normDay2mean = mean(normDay2); 
normDay3mean = mean(normDay3); 
% Export results to a csvfile with file name iso_results.csv
sz = [15 9]; % Setting a size for a table that will allow all the data to fit
%
% Creating variables within the table and assigning data types to the
% variables
varType = ["double","double","double","double","double","double","double","double","double"];
%
% Assigning titles to the variables in the table
varTitle = ["maleIsoIndMeans","femaleIsoIndMeans","maleGroupIsoMean","femaleGroupIsoMean","day1toDay2","day2toDay3","normDay1mean","normDay2mean","normDay3mean"];
%
% Creating the table
iso_results = table('Size',sz,'VariableType',varType,'VariableNames',varTitle);
%
% Putting the values from each result vector into their respective columns in the table
iso_results(1:length(maleIsoIndMeans),1) = table(maleIsoIndMeans);
iso_results(1:length(femaleIsoIndMeans),2) = table(femaleIsoIndMeans);
iso_results(1:length(maleGroupIsoMean),3) = table(maleGroupIsoMean);
iso_results(1:length(femaleGroupIsoMean),4) = table(femaleGroupIsoMean);
iso_results(1:length(day1toDay2),5) = table(day1toDay2);
iso_results(1:length(day2toDay3),6) = table(day2toDay3);
iso_results(1:length(normDay1mean),7) = table(normDay1mean);
iso_results(1:length(normDay2mean),8) = table(normDay2mean);
iso_results(1:length(normDay3mean),9) = table(normDay3mean);
%
% Export file
writetable(iso_results,'iso_results.csv');



