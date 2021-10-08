
%Create game board
figure(1) 
space1 = subplot(3,3,1);
title('1')
axis off
space2 = subplot(3,3,2);
title('2')
axis off
space3 = subplot(3,3,3);
title('3')
axis off
space4 = subplot(3,3,4);
title('4')
axis off
space5 = subplot(3,3,5);
title('5')
axis off
space6 = subplot(3,3,6);
title('6')
axis off
space7 = subplot(3,3,7);
title('7')
axis off
space8 = subplot(3,3,8);
title('8')
axis off
space9 = subplot(3,3,9);
title('9')
axis off
availableSpaces = [1 2 3 4 5 6 7 8 9]
player = zeros (1,5);
computer = zeros (1,5);

%Setting the number of turns in the game
for game = 1:5
    
    %player move
    playermove = 0;
    while playermove ~= 1
        player = input('Make your first move!:');
        if player ==0
            board(board == 1)=1
        playermove = 1;
            availableSpaces = [2 3 4 5 6 7 8 9]
        elseif player(1,1) ==2
            subplot(3,3,2)
            text(0.5,0.5,'X');
            playermove = 1
            availableSpaces(1,1) = [2]
    elseif player(1,1) ==3
        subplot(3,3,3)
        text(0.5,0.5,'X');
        playermove = 1
    elseif player(1,1) ==4
        subplot(3,3,4)
        text(0.5,0.5,'X');
        playermove = 1
    elseif player(1,1) ==5
        subplot(3,3,5)
        text(0.5,0.5,'X');
        playermove = 1
    elseif player(1,1) ==6
        subplot(3,3,6)
        text(0.5,0.5,'X');
    elseif player(1,1) ==7
        subplot(3,3,7)
        text(0.5,0.5,'X');
        break
    elseif player(1,1) ==8
        subplot(3,3,8)
        text(0.5,0.5,'X');
    elseif player(1,1) ==9
        subplot(3,3,9)
        text(0.5,0.5,'X');
        break
    else
        player(1,1) = input('That is not a number! Try again!:'); %If the player enters something other than an integer
        if player(1,1) ==1
            subplot(3,3,1)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==2
            subplot(3,3,2)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==3
            subplot(3,3,3)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==4
            subplot(3,3,4)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==5
            subplot(3,3,5)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==6
            subplot(3,3,6)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==7
            subplot(3,3,7)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==8
            subplot(3,3,8)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==9
            subplot(3,3,9)
            text(0.5,0.5,'X');
            break
        end
    end
end
    
    %comp move
    
end
playermove = 0;
%Player move
while playermove ~= 1
    player(1,1) = input('Make your first move!:');
    if player(1,1) ==1
        subplot(3,3,1)
        text(0.5,0.5,'X');
        playermove = 1;
        break
    elseif player(1,1) ==2
        subplot(3,3,2)
        text(0.5,0.5,'X');
        break
    elseif player(1,1) ==3
        subplot(3,3,3)
        text(0.5,0.5,'X');
        break
    elseif player(1,1) ==4
        subplot(3,3,4)
        text(0.5,0.5,'X');
        break
    elseif player(1,1) ==5
        subplot(3,3,5)
        text(0.5,0.5,'X');
        break
    elseif player(1,1) ==6
        subplot(3,3,6)
        text(0.5,0.5,'X');
        break
    elseif player(1,1) ==7
        subplot(3,3,7)
        text(0.5,0.5,'X');
        break
    elseif player(1,1) ==8
        subplot(3,3,8)
        text(0.5,0.5,'X');
    elseif player(1,1) ==9
        subplot(3,3,9)
        text(0.5,0.5,'X');
        break
    else
        player(1,1) = input('That is not a number! Try again!:'); %If the player enters something other than an integer
        if player(1,1) ==1
            subplot(3,3,1)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==2
            subplot(3,3,2)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==3
            subplot(3,3,3)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==4
            subplot(3,3,4)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==5
            subplot(3,3,5)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==6
            subplot(3,3,6)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==7
            subplot(3,3,7)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==8
            subplot(3,3,8)
            text(0.5,0.5,'X');
            break
        elseif player(1,1) ==9
            subplot(3,3,9)
            text(0.5,0.5,'X');
            break
        end
    end
end
