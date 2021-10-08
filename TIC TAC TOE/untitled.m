clear all
clc
close all
board = zeros(3,3);
%Invite the user to play the game
disp('Hello! Welcome to Tic Tac Toe')
%Prompt the user to play the game
disp('Would you like to play? YES or NO')
play = input('Type yes or no')
b1 = play;
b2 = 'yes'
pg = strcmp(b1,b2)
%Draw Board
figurey
plot([.5 3.5],[-1.5 -1.5], 'b', 'linewidth' ,2);
hold on
plot([.5 3.5],[-2.5 -2.5],'b' , 'linewidth' ,2)
plot([1.5 1.5],[-.5 -3.5],'b' , 'linewidth',2)
plot([2.5 2.5],[-.5 -3.5],'b', 'linewidth',2)
hold off
axis off
%First Move
move = input('Player move 1 [r,c]');
r = move(1);
c = move(2);
board(r,c) = 1;
text(c, -r,'X','horizontalalignment','center','fontsize',50)
