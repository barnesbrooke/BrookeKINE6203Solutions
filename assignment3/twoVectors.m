function [answer] = twoVectors(vector1,vector2)
%Question 7
%   This function takes two vectors and plots their values on a figure,
%   complete with a title and axis labels. Note: Each vector must be input as
%   [a;b].
answer = figure;
plot(vector1);
hold on
plot(vector2);
title('Question 7');
xlabel('x axis');
ylabel('y axis');
end

