%KINE 6203 Assignment 2 - Tic Tac Toe

%Name: Brooke Barnes

%Date: October 7, 2021

%This is a game of tic tac toe. The user enters their move and the computer
%plays against them.

%Invite the user to play the game
disp('Hello! Welcome to Tic Tac Toe')
%Prompt the user to play the game
disp('Would you like to play? YES or NO')
prompt = input('Enter Y for yes, or N for no:','s');
if (prompt == 'Y')
    fprintf('Get ready to play! To make a move, enter a value for the row and column.\n');
else
    fprintf('Goodbye! Hope to see you again soon');
end
board = zeros(3,3);
pause(2)
disp(board)
for turn = 1:5 %Set the number of turns
    %Player Move
    playermove = 0;
    while playermove ~=1
        rowPlayer = input('Choose a row:'); %Player inputs a row
        colPlayer = input('Choose a column:'); %Player inputs a column
        if board(rowPlayer,colPlayer) ==0 %Checking to see if the space is available
            board(rowPlayer,colPlayer) = 1; %Entering the player's move
            pause on
            pause(3)
            disp(board)
            playermove = 1;
        else
            fprintf('Oops! You chose a space that is already taken. Try again!')
            rowPlayer = input('Choose a row:');
            colPlayer = input('Choose a column:');
            board(rowPlayer,colPlayer) = 1;
            pause on
            pause(4)
            disp(board)
            playermove = 1;
        end
    end
    %Computer Move
    computermove = 0;
    while computermove ~=1
        pause(2)
        rowComp = randi([1 3],1,1);
        colComp = randi([1 3],1,1);
        if board(rowComp,colComp) ==0 %Checking to see if the space is available
            board(rowComp,colComp) = 2; %Entering the computer's move
            fprintf('Computer move...\n')
            disp(board)
            computermove = 1;
        else
            rowComp = randi([1 3],1,1);
            colComp = randi([1 3],1,1);
            fprintf('Computer move...\n')
            disp(board)
            computermove = 1;
        end
    end
    %Checking for a win
    if (board(1,1) == 1) && (board(1,2)==1) && (board(1,3)==1) %Player wins
        disp('Congratulations! YOU WON!')
        break
    elseif (board(1,1)==2) && (board(1,2)==2) && (board(1,3)==2) %Computer wins
        disp('YOU LOST!')
        break
    elseif (board(2,1) == 1) && (board(2,2)==1) && (board(2,3)==1)
        disp('Congratulations! YOU WON!')
        break
    elseif (board(2,1)==2) && (board(2,2)==2) && (board(2,3)==2)
        disp('YOU LOST!')
        break
    elseif (board(3,1)==1) && (board(3,2)==1) && (board(3,3)==1)
        disp('Congratulations! YOU WON!')
        break
    elseif (board(3,1)==2) && (board(3,2)==2) && (board(3,3)==2)
        disp('YOU LOST!')
        break
    elseif (board(1,1)==1) && (board(2,1)==1) && (board(3,1)==1)
        disp ('Congratulations! YOU WON!')
        break
    elseif (board(1,1)==2) && (board(2,1)==2) && (board(3,1)==2)
        disp('YOU LOST!')
        break
    elseif (board(1,2)==1) && (board(2,2)==1) && (board(3,2)==1)
        disp('Congratulations! YOU WON!')
        break
    elseif (board(1,2)==2) && (board(2,2)==2) && (board(3,2)==2)
        disp('YOU LOST!')
        break
    elseif (board(1,3)==1) && (board(2,3)==1) && (board(3,3)==1)
        disp('Congratulations! YOU WON!')
        break
    elseif (board(1,3)==2) && (board(2,3)==2) && (board(3,3)==2)
        disp('YOU LOST!')
        break
    elseif (board(1,1)==1) && (board(2,2)==1) && (board(3,3)==1)
        disp('Congratulations! YOU WON!')
        break
    elseif (board(1,1)==2) && (board(2,2)==2) && (board(3,3)==2)
        disp('YOU LOST!')
        break
    elseif (board(1,3)==1) && (board(2,2)==1) && (board(3,1)==1)
        disp('Congratulations! YOU WON!')
        break
    elseif (board(1,3)==2) && (board(2,2)==2) && (board(3,1)==2)
        disp('YOU LOST!')
        break
    end
    if (board(1,1)~=0) && (board(1,2)~=0) && (board(1,3)~=0) && (board(2,1)~=0) && (board(2,2)~=0) && (board(2,3)~=0) && (board(3,1)~=0) && (board(3,2)~=0) && (board(3,3)~=0)
        disp('IT''S A TIE!');
        break
    end
end
disp('Would you like to play again?');
prompt = input('Enter Y for yes, and N for NO:','s');
if(prompt =='Y');
   fprintf('Yay! LET''S GO!');
elseif (prompt =='N');
    fprintf('BYE! Hope to see you again soon!');
else
    fprintf('Oops! Please enter a Y or N!');
end

    
    
    
    