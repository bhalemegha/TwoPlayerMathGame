require './Player'
require 'pp'
require './play'
Max = 3
player1 = Player.new("Player 1", Max)
player2 = Player.new("Player 2", Max)
game = Math_game.new(player1,player2);


while player1.attempt > 0 && player2.attempt > 0 do

  num1 = Math_game.generateNumber()
  num2 = Math_game.generateNumber()

  answer = game.play_game(num1, num2)

  remaining_attempt = game.update_attempt(answer, num1, num2)

  if(answer == (num1 + num2))
    puts "#{game.current_player}: Yes! You are correct."
  else
    puts "#{game.current_player}: Seriously? No."
  end

  if(remaining_attempt > 0)

    puts "#{player1.name}: #{player1.attempt}/#{Max} vs #{player2.name}: #{player2.attempt}/#{Max}"

    puts "------ New Turn ------"
    game.switch_player()
  else
    if(player1.attempt > player2.attempt)
      puts "player 1 wins with score of #{player1.attempt}/#{Max}"
    else
      puts "player 2 wins with score of #{player2.attempt}/#{Max}"
    end
    puts "------Game Over------"
  end
end



