function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Brooke Barnes
%
%         DUE: November 18
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced 
    % BUG: The condition will never be true so 'Enter level (1-3):' will
    % never be complete. This forced the invalid level selection message to
    % display each run.
    % Found by: Running the code and receiving a repetitive display of
    % "Sorry that is not a valid level selection."
    % Fixed by: Changed the "or" statement to an "and" statement by
    % changing || to &&
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner  
    % BUG: Missing additional '=' sign.
    % Found by: Ran the code and received an error message
    % Fixed by: Adding additional '='
    
    highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; 
% BUG: 'h' in advancedhighest was not capitalized which left an unspecified variable
% Found by: Ran the code and received an error regarding the variable name
% Fixed by: correcting variable name to advancedHighest   

end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest,1);
% BUG: The secret number was the same every time, always being the highest
% value possible (ex. 10, 100, 1000)
% Found by: Running the code multiple times and always getting the same
% number (making it easy to win the game)
% Fixed by: Using "randi" to get a random number

% initialize number of guesses and User_guess

numOfTries = 0;
% BUG: Number of guesses should start at zero since numOfTries+1 (later in the code) counts the
% number of guesses
% Found by: Received an incorrect number of guesses every time I ran the
% code
% Fixed by: Changed the initial value of numOfTries to 0
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest
    % BUG: The code did not allow the user to guess the highest value
    % Found by: While running the code guessing, it did not allow me to
    % guess the highest value (ex. I guessed 10 for a value 1-10)
    % Fixed by: Removed '=' so that only values greater than the highest
    % are excluded

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber 
    % BUG: Condition did not perform the intended action and was identical to the elseif condition
    % Found by: Ran the code and received an error that two conditions were
    % identical
    % Fixed by: The sign > was changed to < to make the condition read correctly
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,numOfTries);
% BUG: When running the code, it did not print the number of tries. It just
% said 'You got %d in'
% Found by: Ran the code and saw part of the line was missing
% Fixed by: Added the numOfTries variable to display the number of guesses
end
% BUG: Missing an end to the if statement
% Found by: MATLAB identified an error, stating that the while loop was
% missing an 'end'. However, the intented end to the while loop was grouped
% with the if statement.
% Fixed by: Adding 'end' to close the if statement and ensure that the
% intended end to the while loop was on the correct line (below).
end  % of guessing while loop
fprintf('\n\n Game Over. Thanks for playing the Guess That Number game.'); % Code was printed inside the loop causing it end the game before it was complete. Fixed by moving this line of code outside of the loop.
% end of game
% BUG: Code was printed inside the loop causing it to end the game
% prematurely after each guess AND it was printing immediately after 'You
% got %d in %d tries' on the same line.
% Found by: Running the code and seeing the string print before the game
% was over
% Fixed by: Moved this line of code outside of the loop so 'Game Over' does
% not print until the game is complete AND moving \n\n to the front of the
% line of code as opposed to at the end.
