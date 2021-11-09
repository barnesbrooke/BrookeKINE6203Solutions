function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
% Gender Differencces in Isometric Strength
%   This function returns four outputs: two matrices (one for males and
%   another for females) with the individual mean isometric strength values
%   across all 3 days of lift and a two single values representing the mean
%   of subject means for both males and females
for i=1:25
    if Gender(i) == 'M' % Isolating males data
        maleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3; % Male means of isometric strength values across all 3 days of lifting
       
    else % Isolating females data
        femaleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3; % Female means of isometric strength values across all 3 days of lifting
    end
end
% Suppress value associated with positions with value of zero
maleIsoIndMeans(maleIsoIndMeans==0) = [];
%  Suppress value associated with positions with value of zero
femaleIsoIndMeans(femaleIsoIndMeans==0) = [];
% Changing the maleIsoIndMeans row vector to a column vector
maleIsoIndMeans = maleIsoIndMeans';
% Changing the femaleIsoIndMeans row vector to a column vector
femaleIsoIndMeans = femaleIsoIndMeans';
% Calculating a single mean value (mean of subject means)for males
maleGroupIsoMean = mean(maleIsoIndMeans);
% Calculating a single mean value (mean of subject means)for females
femaleGroupIsoMean = mean(femaleIsoIndMeans);
end

