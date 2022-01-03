require './Player'
require 'pp'
require './play'
# Maximum number of attempts
Max = 3
# Initialize players
player1 = Player.new("Player 1", Max)
player2 = Player.new("Player 2", Max)

# start game
game = Math_game.new(player1,player2);

# continue until any players exhausted with the attempts
while player1.attempt > 0 && player2.attempt > 0 do

  num1 = Math_game.generateNumber()
  num2 = Math_game.generateNumber()

  answer = game.play_game(num1, num2)

  # if player answers wrong, decrease the attempt by 1
  remaining_attempt = game.update_attempt(answer, num1, num2)

  if(answer == (num1 + num2))
    puts "#{game.current_player}: Yes! You are correct."
  else
    puts "#{game.current_player}: Seriously? No."
  end

  if(remaining_attempt > 0)
    # if there are any attempts remaining, shows remaining attempts and switches the players
    puts "#{player1.name}: #{player1.attempt}/#{Max} vs #{player2.name}: #{player2.attempt}/#{Max}"

    puts "------ New Turn ------"
    game.switch_player()
  else
    # shows players whoever has maximum attempts left
    if(player1.attempt > player2.attempt)
      puts "player 1 wins with score of #{player1.attempt}/#{Max}"
    else
      puts "player 2 wins with score of #{player2.attempt}/#{Max}"
    end
    puts "------Game Over------"
  end
end



